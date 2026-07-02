.class Lcom/amazon/device/crashmanager/ArtifactUploader;
.super Ljava/lang/Object;
.source "ArtifactUploader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;,
        Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatistics;,
        Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;,
        Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;
    }
.end annotation


# static fields
.field private static final BACK_OFF_MULTIPLIER:I = 0x2

.field private static final HTTP_CONNECT_TIMEOUT:I = 0x2710

.field private static final HTTP_READ_TIMEOUT:I = 0xea60

.field private static final INITIAL_BACK_OFF_MS:J = 0x1f4L

.field private static final MAX_RETRIES:I = 0x5

.field private static final log:Lcom/amazon/dp/logger/DPLogger;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final crashDedupeUtil:Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;

.field private final mAllowWANUpload:Z

.field private final mArtifactProcessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/device/crashmanager/processor/ArtifactProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private final mArtifactSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/device/crashmanager/source/ArtifactSource;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceSerialNumber:Ljava/lang/String;

.field private final mDeviceType:Ljava/lang/String;

.field private final mDomain:Lcom/amazon/device/utils/det/Domain;

.field private final mNetworkManager:Lcom/amazon/device/utils/det/NetworkManager;

.field private final mStatusNotifier:Lcom/amazon/device/utils/det/StatusNotifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 94
    new-instance v0, Lcom/amazon/dp/logger/DPLogger;

    const-string v1, "ArtifactUploader"

    invoke-direct {v0, v1}, Lcom/amazon/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/device/utils/det/Domain;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;Lcom/amazon/device/utils/det/StatusNotifier;Lcom/amazon/device/utils/det/NetworkManager;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/utils/det/Domain;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/device/crashmanager/source/ArtifactSource;",
            ">;",
            "Ljava/util/List<",
            "Lcom/amazon/device/crashmanager/processor/ArtifactProcessor;",
            ">;",
            "Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;",
            "Lcom/amazon/device/utils/det/StatusNotifier;",
            "Lcom/amazon/device/utils/det/NetworkManager;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const-class v0, Lcom/amazon/device/crashmanager/ArtifactUploader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/crashmanager/ArtifactUploader;->TAG:Ljava/lang/String;

    if-eqz p1, :cond_7

    const-string v0, ", is invalid"

    const-string v1, "Device type: "

    if-eqz p2, :cond_6

    .line 161
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    if-eqz p3, :cond_5

    .line 164
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    if-eqz p4, :cond_4

    if-eqz p5, :cond_3

    if-eqz p6, :cond_2

    if-eqz p7, :cond_1

    if-eqz p8, :cond_0

    .line 183
    iput-object p1, p0, Lcom/amazon/device/crashmanager/ArtifactUploader;->mDomain:Lcom/amazon/device/utils/det/Domain;

    .line 184
    iput-object p2, p0, Lcom/amazon/device/crashmanager/ArtifactUploader;->mDeviceType:Ljava/lang/String;

    .line 185
    iput-object p3, p0, Lcom/amazon/device/crashmanager/ArtifactUploader;->mDeviceSerialNumber:Ljava/lang/String;

    .line 186
    iput-object p4, p0, Lcom/amazon/device/crashmanager/ArtifactUploader;->mArtifactSources:Ljava/util/List;

    .line 187
    iput-object p5, p0, Lcom/amazon/device/crashmanager/ArtifactUploader;->mArtifactProcessors:Ljava/util/List;

    .line 188
    iput-object p6, p0, Lcom/amazon/device/crashmanager/ArtifactUploader;->crashDedupeUtil:Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;

    .line 189
    iput-object p7, p0, Lcom/amazon/device/crashmanager/ArtifactUploader;->mStatusNotifier:Lcom/amazon/device/utils/det/StatusNotifier;

    .line 190
    iput-object p8, p0, Lcom/amazon/device/crashmanager/ArtifactUploader;->mNetworkManager:Lcom/amazon/device/utils/det/NetworkManager;

    .line 191
    iput-boolean p9, p0, Lcom/amazon/device/crashmanager/ArtifactUploader;->mAllowWANUpload:Z

    return-void

    .line 180
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "NetworkManager must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 177
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "StatusNotifier must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 174
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CrashDescriptorStorageUtil must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 171
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Artifact processors must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 168
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Artifact sources must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 165
    :cond_5
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

    .line 162
    :cond_6
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

    .line 159
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Domain must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private addRequestHeaders(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "Accept-Encoding"

    const-string/jumbo v1, "utf-8"

    .line 598
    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Type"

    const-string v1, "Application/Raw"

    .line 599
    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    iget-object v0, p0, Lcom/amazon/device/crashmanager/ArtifactUploader;->mDeviceSerialNumber:Ljava/lang/String;

    const-string v1, "X-Anonymous-Tag"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    iget-object v0, p0, Lcom/amazon/device/crashmanager/ArtifactUploader;->mDeviceType:Ljava/lang/String;

    const-string v1, "X-DeviceType"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string v1, "X-DeviceFirmwareVersion"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-Content-Type"

    const-string v1, "CrashReport"

    .line 605
    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    sget-object v0, Lcom/amazon/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/dp/logger/DPLogger;

    iget-object v1, p0, Lcom/amazon/device/crashmanager/ArtifactUploader;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const-string p2, "Key for the file sent to DET"

    invoke-virtual {v0, v1, p2, v2}, Lcom/amazon/dp/logger/DPLoggerBase;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_0

    .line 607
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_0

    const-string p2, "X-Upload-Tag"

    .line 608
    invoke-virtual {p1, p2, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private attemptUpload(Lcom/amazon/client/metrics/common/MetricEvent;Lcom/amazon/device/crashmanager/Artifact;Ljava/lang/String;ZLjava/io/InputStream;)Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 549
    invoke-virtual {p2}, Lcom/amazon/device/crashmanager/Artifact;->getTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p2}, Lcom/amazon/device/crashmanager/Artifact;->getCreationTimeUTCMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "%s-%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 551
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v1, 0x0

    .line 554
    :try_start_0
    invoke-virtual {p2}, Lcom/amazon/device/crashmanager/Artifact;->getCrashDescriptor()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    if-eqz p4, :cond_0

    .line 559
    iget-object p4, p0, Lcom/amazon/device/crashmanager/ArtifactUploader;->crashDedupeUtil:Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;

    invoke-virtual {p2}, Lcom/amazon/device/crashmanager/Artifact;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p4, v7, v6}, Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_0

    .line 560
    sget-object p1, Lcom/amazon/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/dp/logger/DPLogger;

    iget-object p2, p0, Lcom/amazon/device/crashmanager/ArtifactUploader;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "CrashDescriptor: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " not found in SharedPreferences, skipping."

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3, p4}, Lcom/amazon/dp/logger/DPLoggerBase;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 562
    sget-object p1, Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;->DE_DUPED:Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;

    return-object p1

    .line 565
    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "detEndPoint_"

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/amazon/device/crashmanager/ArtifactUploader;->mDomain:Lcom/amazon/device/utils/det/Domain;

    invoke-static {v6}, Lcom/amazon/device/utils/det/DetEndpointConfig;->getServiceEndpoint(Lcom/amazon/device/utils/det/Domain;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-interface {p1, p4, v6, v7}, Lcom/amazon/client/metrics/common/MetricEvent;->addCounter(Ljava/lang/String;D)V

    .line 566
    invoke-direct {p0, v0}, Lcom/amazon/device/crashmanager/ArtifactUploader;->getHttpUrlConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 567
    invoke-direct {p0, v1, v0, p3}, Lcom/amazon/device/crashmanager/ArtifactUploader;->addRequestHeaders(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p3, 0x2710

    .line 568
    invoke-virtual {v1, p3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const p3, 0xea60

    .line 569
    invoke-virtual {v1, p3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 570
    invoke-virtual {p5}, Ljava/io/InputStream;->available()I

    move-result p3

    invoke-virtual {v1, p3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 571
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string p3, "POST"

    .line 572
    invoke-virtual {v1, p3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 573
    invoke-virtual {p5}, Ljava/io/InputStream;->available()I

    move-result p3

    int-to-long p3, p3

    .line 574
    sget-object v0, Lcom/amazon/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/dp/logger/DPLogger;

    iget-object v3, p0, Lcom/amazon/device/crashmanager/ArtifactUploader;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Upload Size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v6, v2}, Lcom/amazon/dp/logger/DPLoggerBase;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v0, "uploadCrashSize"

    long-to-double v2, p3

    .line 577
    invoke-interface {p1, v0, v2, v3}, Lcom/amazon/client/metrics/common/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 579
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 580
    invoke-direct {p0, p5, v0}, Lcom/amazon/device/crashmanager/ArtifactUploader;->copyBytesToOutputStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 581
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 582
    invoke-direct {p0, v1}, Lcom/amazon/device/crashmanager/ArtifactUploader;->handleResponse(Ljava/net/HttpURLConnection;)Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;

    move-result-object p5

    .line 583
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "crashUploadTime_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/device/crashmanager/Artifact;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    long-to-double v4, v2

    invoke-interface {p1, v0, v4, v5}, Lcom/amazon/client/metrics/common/MetricEvent;->addTimer(Ljava/lang/String;D)V

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "crashupload_bytesPerSecond_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/device/crashmanager/Artifact;->getTag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-wide/16 v4, 0x3e8

    mul-long p3, p3, v4

    div-long/2addr p3, v2

    long-to-double p3, p3

    invoke-interface {p1, p2, p3, p4}, Lcom/amazon/client/metrics/common/MetricEvent;->addTimer(Ljava/lang/String;D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 589
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return-object p5

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 591
    :cond_2
    throw p1
.end method

.method private buildDedupeMapFromDropbox(Lcom/amazon/device/crashmanager/source/DropBoxArtifactSource;Lcom/amazon/client/metrics/common/MetricEvent;)V
    .locals 7

    .line 347
    sget-object v0, Lcom/amazon/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/dp/logger/DPLogger;

    iget-object v1, p0, Lcom/amazon/device/crashmanager/ArtifactUploader;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Starting to build descriptor dedupe map"

    invoke-virtual {v0, v1, v4, v3}, Lcom/amazon/dp/logger/DPLoggerBase;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "buildCrashDescriptorCounterMappingTime"

    .line 348
    invoke-interface {p2, v0}, Lcom/amazon/client/metrics/common/MetricEvent;->startTimer(Ljava/lang/String;)V

    :goto_0
    const-string v1, "BUILD_MAP"

    .line 350
    invoke-virtual {p1, p2, v1}, Lcom/amazon/device/crashmanager/source/DropBoxArtifactSource;->getNextArtifact(Lcom/amazon/client/metrics/common/MetricEvent;Ljava/lang/String;)Lcom/amazon/device/crashmanager/Artifact;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    .line 354
    :try_start_0
    invoke-direct {p0, v3, v1}, Lcom/amazon/device/crashmanager/ArtifactUploader;->processArtifact(Lcom/amazon/device/crashmanager/Artifact;Ljava/lang/String;)Ljava/io/InputStream;

    .line 355
    invoke-virtual {v3}, Lcom/amazon/device/crashmanager/Artifact;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    .line 359
    :goto_1
    sget-object v5, Lcom/amazon/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/dp/logger/DPLogger;

    iget-object v6, p0, Lcom/amazon/device/crashmanager/ArtifactUploader;->TAG:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v2

    const-string v1, "Exception thrown when process artifact."

    invoke-virtual {v5, v6, v1, v4}, Lcom/amazon/dp/logger/DPLoggerBase;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 357
    :goto_2
    sget-object v5, Lcom/amazon/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/dp/logger/DPLogger;

    iget-object v6, p0, Lcom/amazon/device/crashmanager/ArtifactUploader;->TAG:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v2

    const-string v1, "Failed to close artifact."

    invoke-virtual {v5, v6, v1, v4}, Lcom/amazon/dp/logger/DPLoggerBase;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 361
    :goto_3
    iget-object v1, p0, Lcom/amazon/device/crashmanager/ArtifactUploader;->crashDedupeUtil:Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;

    invoke-virtual {v3}, Lcom/amazon/device/crashmanager/Artifact;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/amazon/device/crashmanager/Artifact;->getCrashDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;->increaseCounter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 364
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/device/crashmanager/source/DropBoxArtifactSource;->saveBuildMapIndex()V

    .line 365
    iget-object p1, p0, Lcom/amazon/device/crashmanager/ArtifactUploader;->crashDedupeUtil:Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;

    invoke-interface {p1}, Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;->persistCrashDescriptors()V

    .line 366
    invoke-interface {p2, v0}, Lcom/amazon/client/metrics/common/MetricEvent;->stopTimer(Ljava/lang/String;)V

    .line 367
    sget-object p1, Lcom/amazon/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/dp/logger/DPLogger;

    iget-object p2, p0, Lcom/amazon/device/crashmanager/ArtifactUploader;->TAG:Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Finish building descriptor dedupe map"

    invoke-virtual {p1, p2, v1, v0}, Lcom/amazon/dp/logger/DPLoggerBase;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private chooseArtifactProcessor(Lcom/amazon/device/crashmanager/Artifact;)Lcom/amazon/device/crashmanager/processor/ArtifactProcessor;
    .locals 3

    .line 652
    iget-object v0, p0, Lcom/amazon/device/crashmanager/ArtifactUploader;->mArtifactProcessors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/device/crashmanager/processor/ArtifactProcessor;

    if-eqz v1, :cond_0

    .line 653
    invoke-virtual {p1}, Lcom/amazon/device/crashmanager/Artifact;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/device/crashmanager/processor/ArtifactProcessor;->canProcessTag(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 657
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No artifact processor available for artifact. Tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/device/crashmanager/Artifact;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private copyBytesToOutputStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 687
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 688
    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 2

    .line 642
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 643
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

.method private getHttpUrlConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/device/crashmanager/ArtifactUploader;->mDomain:Lcom/amazon/device/utils/det/Domain;

    invoke-static {v1}, Lcom/amazon/device/utils/det/DetEndpointConfig;->getServiceEndpoint(Lcom/amazon/device/utils/det/Domain;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 614
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    return-object p1
.end method

.method private handleResponse(Ljava/net/HttpURLConnection;)Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 619
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 620
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x2

    const-string v3, "handleResponse"

    const/4 v4, 0x0

    const/16 v5, 0xc8

    if-lt v0, v5, :cond_0

    const/16 v5, 0x12c

    if-ge v0, v5, :cond_0

    .line 622
    sget-object v5, Lcom/amazon/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/dp/logger/DPLogger;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    aput-object p1, v2, v1

    const-string p1, "Successfully uploaded crash; code: %s, message: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {v5, v3, p1, v0}, Lcom/amazon/dp/logger/DPLoggerBase;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 623
    sget-object p1, Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;->SUCCESS:Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;

    return-object p1

    :cond_0
    const/16 v5, 0x198

    if-eq v0, v5, :cond_3

    const/16 v5, 0x190

    const/16 v6, 0x1f4

    if-lt v0, v5, :cond_1

    if-ge v0, v6, :cond_1

    .line 628
    sget-object v5, Lcom/amazon/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/dp/logger/DPLogger;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    aput-object p1, v2, v1

    const-string p1, "Client error while uploading crash; code: %s, message: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {v5, v3, p1, v0}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 629
    sget-object p1, Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;->FAILED:Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;

    return-object p1

    :cond_1
    if-lt v0, v6, :cond_2

    const/16 v5, 0x258

    if-ge v0, v5, :cond_2

    .line 631
    sget-object p1, Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;->SERVER_ERROR:Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;

    return-object p1

    .line 633
    :cond_2
    sget-object v5, Lcom/amazon/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/dp/logger/DPLogger;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    aput-object p1, v2, v1

    const-string p1, "Unexpected response code while uploading crash; code: %s, message: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {v5, v3, p1, v0}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 634
    sget-object p1, Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;->FAILED:Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;

    return-object p1

    .line 625
    :cond_3
    sget-object v5, Lcom/amazon/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/dp/logger/DPLogger;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    aput-object p1, v2, v1

    const-string v0, "Http client timeout while uploading crash; code: %s, message: %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v5, v3, v0, v1}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 626
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Http client timeout while uploading crash; message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private processArtifact(Lcom/amazon/device/crashmanager/Artifact;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 647
    invoke-direct {p0, p1}, Lcom/amazon/device/crashmanager/ArtifactUploader;->chooseArtifactProcessor(Lcom/amazon/device/crashmanager/Artifact;)Lcom/amazon/device/crashmanager/processor/ArtifactProcessor;

    move-result-object v0

    .line 648
    invoke-interface {v0, p1, p2}, Lcom/amazon/device/crashmanager/processor/ArtifactProcessor;->processArtifact(Lcom/amazon/device/crashmanager/Artifact;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method private uploadArtifactWithRetries(Lcom/amazon/client/metrics/common/MetricEvent;Lcom/amazon/device/crashmanager/Artifact;Ljava/lang/String;Z)Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const-string/jumbo v1, "numArtifactsNotUploaded"

    .line 427
    sget-object v2, Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;->FAILED:Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "ARTIFACT_UPLOAD"

    move-object/from16 v9, p2

    .line 431
    invoke-direct {v7, v9, v4}, Lcom/amazon/device/crashmanager/ArtifactUploader;->processArtifact(Lcom/amazon/device/crashmanager/Artifact;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 432
    :try_start_1
    iget-object v4, v7, Lcom/amazon/device/crashmanager/ArtifactUploader;->crashDedupeUtil:Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;

    invoke-virtual/range {p2 .. p2}, Lcom/amazon/device/crashmanager/Artifact;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/amazon/device/crashmanager/Artifact;->getCrashDescriptor()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;->getCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 433
    sget-object v4, Lcom/amazon/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/dp/logger/DPLogger;

    iget-object v5, v7, Lcom/amazon/device/crashmanager/ArtifactUploader;->TAG:Ljava/lang/String;

    const-string v6, "Dedupe Count is :"

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    invoke-virtual {v4, v5, v6, v13}, Lcom/amazon/dp/logger/DPLoggerBase;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 434
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/device/crashmanager/Artifact;->shouldUploadArtifact()Z

    move-result v4

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    if-nez v4, :cond_1

    .line 435
    sget-object v2, Lcom/amazon/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/dp/logger/DPLogger;

    iget-object v3, v7, Lcom/amazon/device/crashmanager/ArtifactUploader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping Artifact of type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/amazon/device/crashmanager/Artifact;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v15, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v5}, Lcom/amazon/dp/logger/DPLoggerBase;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 436
    invoke-interface {v8, v1, v13, v14}, Lcom/amazon/client/metrics/common/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 437
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/device/crashmanager/Artifact;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1, v13, v14}, Lcom/amazon/client/metrics/common/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 438
    new-instance v8, Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;

    sget-object v3, Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;->SKIP:Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v8

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;-><init>(Lcom/amazon/device/crashmanager/ArtifactUploader;Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v10, :cond_0

    .line 529
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object v8

    :cond_1
    const-wide/16 v4, 0x1f4

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    const/4 v6, 0x0

    :goto_0
    const-string/jumbo v3, "uploadFailed"

    const/4 v2, 0x5

    if-ge v6, v2, :cond_c

    .line 441
    :try_start_2
    invoke-virtual {v10}, Ljava/io/InputStream;->reset()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string/jumbo v20, "uploadNoUsableConnectionMessage"

    const-string/jumbo v21, "uploadTimeoutExceptionMessage"

    if-lez v6, :cond_2

    .line 445
    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    move/from16 v24, v6

    goto/16 :goto_9

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    :goto_1
    move-object v1, v0

    move/from16 v24, v6

    goto/16 :goto_c

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    :goto_2
    move-object v1, v0

    move/from16 v24, v6

    goto/16 :goto_10

    :catch_5
    move-exception v0

    move-object v1, v0

    move/from16 v24, v6

    goto/16 :goto_13

    .line 447
    :catch_6
    :try_start_4
    sget-object v1, Lcom/amazon/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/dp/logger/DPLogger;

    iget-object v2, v7, Lcom/amazon/device/crashmanager/ArtifactUploader;->TAG:Ljava/lang/String;

    const-string v13, "Interrupted while uploading"

    new-array v14, v15, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v13, v14}, Lcom/amazon/dp/logger/DPLoggerBase;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_3
    const-wide/16 v1, 0x2

    mul-long v4, v4, v1

    :cond_2
    move-wide v13, v4

    .line 451
    :try_start_5
    sget-object v1, Lcom/amazon/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/dp/logger/DPLogger;

    iget-object v2, v7, Lcom/amazon/device/crashmanager/ArtifactUploader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uploading artifact: retry Count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v15, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4, v5}, Lcom/amazon/dp/logger/DPLoggerBase;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_5 .. :try_end_5} :catch_1a
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_19
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_18
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_17
    .catch Ljavax/net/ssl/SSLException; {:try_start_5 .. :try_end_5} :catch_16
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_15
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v1, p0

    const/4 v5, 0x5

    move-object/from16 v2, p1

    move-object v4, v3

    move-object/from16 v3, p2

    move-object/from16 v23, v4

    move-object/from16 v4, p3

    const/4 v15, 0x5

    move/from16 v5, p4

    move/from16 v24, v6

    move-object v6, v10

    .line 452
    :try_start_6
    invoke-direct/range {v1 .. v6}, Lcom/amazon/device/crashmanager/ArtifactUploader;->attemptUpload(Lcom/amazon/client/metrics/common/MetricEvent;Lcom/amazon/device/crashmanager/Artifact;Ljava/lang/String;ZLjava/io/InputStream;)Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;

    move-result-object v16

    .line 454
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/device/crashmanager/Artifact;->getCrashDescriptor()Ljava/lang/String;

    move-result-object v1
    :try_end_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_6} :catch_14
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_13
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_12
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_11
    .catch Ljavax/net/ssl/SSLException; {:try_start_6 .. :try_end_6} :catch_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_f
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 455
    :try_start_7
    sget-object v2, Lcom/amazon/device/crashmanager/ArtifactUploader$1;->$SwitchMap$com$amazon$device$crashmanager$ArtifactUploader$ArtifactUploadStatus:[I

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3
    :try_end_7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_7 .. :try_end_7} :catch_e
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljavax/net/ssl/SSLException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eq v2, v12, :cond_9

    const/4 v3, 0x3

    if-eq v2, v3, :cond_7

    const-string v4, "Creation time UTC"

    const-string v6, "Tag"

    const/4 v3, 0x4

    if-eq v2, v3, :cond_5

    if-eq v2, v15, :cond_4

    .line 480
    :try_start_8
    sget-object v2, Lcom/amazon/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/dp/logger/DPLogger;

    iget-object v15, v7, Lcom/amazon/device/crashmanager/ArtifactUploader;->TAG:Ljava/lang/String;

    const-string v3, "Unknown det response!"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const-string v18, "DetReponse"

    const/16 v19, 0x0

    aput-object v18, v5, v19

    aput-object v16, v5, v12

    const/16 v18, 0x2

    aput-object v6, v5, v18

    .line 481
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/device/crashmanager/Artifact;->getTag()Ljava/lang/String;

    move-result-object v6

    const/16 v17, 0x3

    aput-object v6, v5, v17

    const/4 v6, 0x4

    aput-object v4, v5, v6

    invoke-virtual/range {p2 .. p2}, Lcom/amazon/device/crashmanager/Artifact;->getCreationTimeUTCMillis()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v6, 0x5

    aput-object v4, v5, v6

    .line 480
    invoke-virtual {v2, v15, v3, v5}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 482
    new-instance v2, Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;

    sget-object v3, Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;->SKIP:Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;

    invoke-direct {v2, v7, v3, v1}, Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;-><init>(Lcom/amazon/device/crashmanager/ArtifactUploader;Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_8 .. :try_end_8} :catch_e
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_c
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljavax/net/ssl/SSLException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v10, :cond_3

    .line 529
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    :cond_3
    return-object v2

    :catch_7
    move-exception v0

    move-object/from16 v17, v1

    move-wide v4, v13

    move-object/from16 v2, v23

    goto/16 :goto_5

    .line 473
    :cond_4
    :try_start_9
    sget-object v2, Lcom/amazon/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/dp/logger/DPLogger;

    iget-object v3, v7, Lcom/amazon/device/crashmanager/ArtifactUploader;->TAG:Ljava/lang/String;

    const-string v5, "Server error on upload of artifact."

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v22, 0x0

    aput-object v6, v15, v22

    invoke-virtual/range {p2 .. p2}, Lcom/amazon/device/crashmanager/Artifact;->getTag()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v15, v12

    const/4 v6, 0x2

    aput-object v4, v15, v6

    .line 474
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/device/crashmanager/Artifact;->getCreationTimeUTCMillis()J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v6, 0x3

    aput-object v4, v15, v6

    .line 473
    invoke-virtual {v2, v3, v5, v15}, Lcom/amazon/dp/logger/DPLoggerBase;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_9 .. :try_end_9} :catch_e
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_d
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljavax/net/ssl/SSLException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object/from16 v17, v1

    move-wide v4, v13

    goto/16 :goto_11

    .line 466
    :cond_5
    :try_start_a
    sget-object v2, Lcom/amazon/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/dp/logger/DPLogger;

    iget-object v3, v7, Lcom/amazon/device/crashmanager/ArtifactUploader;->TAG:Ljava/lang/String;

    const-string v5, "Client error on upload of artifact."

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v6, v15, v18

    invoke-virtual/range {p2 .. p2}, Lcom/amazon/device/crashmanager/Artifact;->getTag()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v15, v12

    const/4 v6, 0x2

    aput-object v4, v15, v6

    .line 467
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/device/crashmanager/Artifact;->getCreationTimeUTCMillis()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v6, 0x3

    aput-object v4, v15, v6

    .line 466
    invoke-virtual {v2, v3, v5, v15}, Lcom/amazon/dp/logger/DPLoggerBase;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_a .. :try_end_a} :catch_e
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_d
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_c
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljavax/net/ssl/SSLException; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-object/from16 v2, v23

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 469
    :try_start_b
    invoke-interface {v8, v2, v3, v4}, Lcom/amazon/client/metrics/common/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 470
    new-instance v3, Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;

    sget-object v4, Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;->SKIP:Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;

    invoke-direct {v3, v7, v4, v1}, Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;-><init>(Lcom/amazon/device/crashmanager/ArtifactUploader;Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_b .. :try_end_b} :catch_e
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_d
    .catch Ljava/net/SocketException; {:try_start_b .. :try_end_b} :catch_c
    .catch Ljava/net/UnknownHostException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljavax/net/ssl/SSLException; {:try_start_b .. :try_end_b} :catch_a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v10, :cond_6

    .line 529
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    :cond_6
    return-object v3

    :cond_7
    move-object/from16 v2, v23

    .line 462
    :try_start_c
    sget-object v3, Lcom/amazon/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/dp/logger/DPLogger;

    iget-object v4, v7, Lcom/amazon/device/crashmanager/ArtifactUploader;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CrashDescriptor: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " not found in SharedPreferences, skipping."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v15, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v15}, Lcom/amazon/dp/logger/DPLoggerBase;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 463
    new-instance v3, Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;

    sget-object v4, Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;->DE_DUPED:Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;

    invoke-direct {v3, v7, v4, v1}, Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;-><init>(Lcom/amazon/device/crashmanager/ArtifactUploader;Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_c .. :try_end_c} :catch_e
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_c} :catch_d
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_c} :catch_c
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_c} :catch_b
    .catch Ljavax/net/ssl/SSLException; {:try_start_c .. :try_end_c} :catch_a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v10, :cond_8

    .line 529
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    :cond_8
    return-object v3

    :cond_9
    move-object/from16 v2, v23

    .line 458
    :try_start_d
    iget-object v3, v7, Lcom/amazon/device/crashmanager/ArtifactUploader;->crashDedupeUtil:Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;

    invoke-virtual/range {p2 .. p2}, Lcom/amazon/device/crashmanager/Artifact;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1, v11}, Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;->prune(Ljava/lang/String;Ljava/lang/String;I)V

    .line 459
    new-instance v3, Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;

    sget-object v4, Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;->SUCCESS:Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;

    invoke-direct {v3, v7, v4, v1}, Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;-><init>(Lcom/amazon/device/crashmanager/ArtifactUploader;Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_d} :catch_e
    .catch Ljava/net/SocketTimeoutException; {:try_start_d .. :try_end_d} :catch_d
    .catch Ljava/net/SocketException; {:try_start_d .. :try_end_d} :catch_c
    .catch Ljava/net/UnknownHostException; {:try_start_d .. :try_end_d} :catch_b
    .catch Ljavax/net/ssl/SSLException; {:try_start_d .. :try_end_d} :catch_a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eqz v10, :cond_a

    .line 529
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    :cond_a
    return-object v3

    :catch_8
    move-exception v0

    goto :goto_4

    :catch_9
    move-exception v0

    move-object/from16 v2, v23

    :goto_4
    move-object/from16 v17, v1

    move-wide v4, v13

    :goto_5
    move-object v1, v0

    goto :goto_9

    :catch_a
    move-exception v0

    goto :goto_6

    :catch_b
    move-exception v0

    :goto_6
    move-object/from16 v17, v1

    move-wide v4, v13

    move-object v1, v0

    goto/16 :goto_c

    :catch_c
    move-exception v0

    goto :goto_7

    :catch_d
    move-exception v0

    :goto_7
    move-object/from16 v17, v1

    move-wide v4, v13

    move-object v1, v0

    goto/16 :goto_10

    :catch_e
    move-exception v0

    move-object/from16 v17, v1

    move-wide v4, v13

    move-object v1, v0

    goto/16 :goto_13

    :catch_f
    move-exception v0

    move-object/from16 v2, v23

    goto :goto_8

    :catch_10
    move-exception v0

    goto/16 :goto_b

    :catch_11
    move-exception v0

    goto/16 :goto_b

    :catch_12
    move-exception v0

    goto/16 :goto_f

    :catch_13
    move-exception v0

    goto/16 :goto_f

    :catch_14
    move-exception v0

    goto/16 :goto_12

    :catch_15
    move-exception v0

    move-object v2, v3

    move/from16 v24, v6

    :goto_8
    move-object v1, v0

    move-wide v4, v13

    .line 503
    :goto_9
    :try_start_e
    sget-object v3, Lcom/amazon/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/dp/logger/DPLogger;

    iget-object v6, v7, Lcom/amazon/device/crashmanager/ArtifactUploader;->TAG:Ljava/lang/String;

    const-string v13, "Exception while uploading crashes"

    new-array v14, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v1, v14, v15

    invoke-virtual {v3, v6, v13, v14}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 505
    invoke-virtual {v7, v1}, Lcom/amazon/device/crashmanager/ArtifactUploader;->isConnectionRefusedError(Ljava/lang/Exception;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 506
    sget-object v2, Lcom/amazon/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/dp/logger/DPLogger;

    iget-object v3, v7, Lcom/amazon/device/crashmanager/ArtifactUploader;->TAG:Ljava/lang/String;

    const-string v6, "Unusable connection found while uploading crashes"

    new-array v13, v12, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v1, v13, v14

    invoke-virtual {v2, v3, v6, v13}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v2, "uploadConnectionRefusedError"

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    .line 507
    invoke-interface {v8, v2, v13, v14}, Lcom/amazon/client/metrics/common/MetricEvent;->addCounter(Ljava/lang/String;D)V

    .line 508
    invoke-direct {v7, v1}, Lcom/amazon/device/crashmanager/ArtifactUploader;->getExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v19

    goto :goto_d

    .line 512
    :cond_b
    sget-object v3, Lcom/amazon/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/dp/logger/DPLogger;

    iget-object v6, v7, Lcom/amazon/device/crashmanager/ArtifactUploader;->TAG:Ljava/lang/String;

    const-string v13, "Unknown exception, retrying"

    const/4 v14, 0x0

    new-array v15, v14, [Ljava/lang/Object;

    invoke-virtual {v3, v6, v13, v15}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    .line 515
    invoke-interface {v8, v2, v13, v14}, Lcom/amazon/client/metrics/common/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    const-string/jumbo v2, "uploadUnknowException"

    .line 516
    invoke-interface {v8, v2, v13, v14}, Lcom/amazon/client/metrics/common/MetricEvent;->addCounter(Ljava/lang/String;D)V

    .line 517
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uploadUnknowException."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    .line 518
    invoke-interface {v8, v2, v13, v14}, Lcom/amazon/client/metrics/common/MetricEvent;->addCounter(Ljava/lang/String;D)V

    .line 519
    invoke-direct {v7, v1}, Lcom/amazon/device/crashmanager/ArtifactUploader;->getExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v18, "uploadUnknownExceptionMessage"

    .line 523
    sget-object v1, Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;->SKIP:Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;

    move-object/from16 v16, v1

    goto :goto_11

    :catch_16
    move-exception v0

    goto :goto_a

    :catch_17
    move-exception v0

    :goto_a
    move/from16 v24, v6

    :goto_b
    move-object v1, v0

    move-wide v4, v13

    .line 497
    :goto_c
    sget-object v2, Lcom/amazon/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/dp/logger/DPLogger;

    iget-object v3, v7, Lcom/amazon/device/crashmanager/ArtifactUploader;->TAG:Ljava/lang/String;

    const-string v6, "UnknownHostException thrown while uploading"

    new-array v13, v12, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v1, v13, v14

    invoke-virtual {v2, v3, v6, v13}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v2, "uploadUnknownHostException"

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    .line 498
    invoke-interface {v8, v2, v13, v14}, Lcom/amazon/client/metrics/common/MetricEvent;->addCounter(Ljava/lang/String;D)V

    .line 499
    invoke-direct {v7, v1}, Lcom/amazon/device/crashmanager/ArtifactUploader;->getExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v19

    :goto_d
    move-object/from16 v18, v20

    goto :goto_11

    :catch_18
    move-exception v0

    goto :goto_e

    :catch_19
    move-exception v0

    :goto_e
    move/from16 v24, v6

    :goto_f
    move-object v1, v0

    move-wide v4, v13

    .line 491
    :goto_10
    sget-object v2, Lcom/amazon/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/dp/logger/DPLogger;

    iget-object v3, v7, Lcom/amazon/device/crashmanager/ArtifactUploader;->TAG:Ljava/lang/String;

    const-string v6, "SocketTimeoutException while uploading crashes."

    new-array v13, v12, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v1, v13, v14

    invoke-virtual {v2, v3, v6, v13}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v2, "uploadSocketTimeoutException"

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    .line 492
    invoke-interface {v8, v2, v13, v14}, Lcom/amazon/client/metrics/common/MetricEvent;->addCounter(Ljava/lang/String;D)V

    .line 493
    invoke-direct {v7, v1}, Lcom/amazon/device/crashmanager/ArtifactUploader;->getExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v18, v21

    :goto_11
    const/4 v14, 0x0

    goto :goto_14

    :catch_1a
    move-exception v0

    move/from16 v24, v6

    :goto_12
    move-object v1, v0

    move-wide v4, v13

    .line 485
    :goto_13
    sget-object v2, Lcom/amazon/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/dp/logger/DPLogger;

    iget-object v3, v7, Lcom/amazon/device/crashmanager/ArtifactUploader;->TAG:Ljava/lang/String;

    const-string v6, "TimeoutException while uploading crashes."

    new-array v13, v12, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v1, v13, v14

    invoke-virtual {v2, v3, v6, v13}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v2, "uploadTimeoutException"

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 486
    invoke-interface {v8, v2, v12, v13}, Lcom/amazon/client/metrics/common/MetricEvent;->addCounter(Ljava/lang/String;D)V

    .line 487
    invoke-direct {v7, v1}, Lcom/amazon/device/crashmanager/ArtifactUploader;->getExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v19
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-object/from16 v18, v21

    :goto_14
    add-int/lit8 v1, v24, 0x1

    move v6, v1

    const/4 v12, 0x1

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_c
    move-object v2, v3

    if-eqz v10, :cond_d

    .line 529
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    :cond_d
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 540
    invoke-interface {v8, v2, v3, v4}, Lcom/amazon/client/metrics/common/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 542
    new-instance v8, Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;

    move-object v1, v8

    move-object/from16 v2, p0

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    invoke-direct/range {v1 .. v6}, Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;-><init>(Lcom/amazon/device/crashmanager/ArtifactUploader;Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v8

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v3, v10

    goto :goto_15

    :catchall_1
    move-exception v0

    move-object v1, v0

    :goto_15
    if-eqz v3, :cond_e

    .line 529
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 531
    :cond_e
    throw v1
.end method


# virtual methods
.method protected isConnectionRefusedError(Ljava/lang/Exception;)Z
    .locals 4

    .line 669
    instance-of v0, p1, Ljava/net/ConnectException;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 673
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    .line 674
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 675
    instance-of v2, v0, Landroid/system/ErrnoException;

    if-eqz v2, :cond_1

    sget v2, Landroid/system/OsConstants;->ECONNREFUSED:I

    check-cast v0, Landroid/system/ErrnoException;

    iget v0, v0, Landroid/system/ErrnoException;->errno:I

    if-ne v2, v0, :cond_1

    return v3

    .line 679
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "ECONNREFUSED"

    .line 680
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method protected uploadArtifact(Lcom/amazon/client/metrics/common/MetricEvent;Lcom/amazon/device/crashmanager/Artifact;Ljava/lang/String;Z)Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;
    .locals 14

    move-object v7, p0

    move-object v8, p1

    const-string/jumbo v9, "uploadTime"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 385
    :try_start_0
    sget-object v0, Lcom/amazon/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/dp/logger/DPLogger;

    iget-object v5, v7, Lcom/amazon/device/crashmanager/ArtifactUploader;->TAG:Ljava/lang/String;

    const-string v6, "About to upload artifact"

    const/16 v10, 0x8

    new-array v10, v10, [Ljava/lang/Object;

    const-string v11, "Tag"

    aput-object v11, v10, v2

    .line 386
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/device/crashmanager/Artifact;->getTag()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v1

    const/4 v11, 0x2

    const-string v12, "Creation time UTC"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    .line 387
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/device/crashmanager/Artifact;->getCreationTimeUTCMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, "DeviceType"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    iget-object v12, v7, Lcom/amazon/device/crashmanager/ArtifactUploader;->mDeviceType:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string v12, "DeviceSerialNumber"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    iget-object v12, v7, Lcom/amazon/device/crashmanager/ArtifactUploader;->mDeviceSerialNumber:Ljava/lang/String;

    aput-object v12, v10, v11

    .line 385
    invoke-virtual {v0, v5, v6, v10}, Lcom/amazon/dp/logger/DPLoggerBase;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v0, "uploadAttempt"

    .line 393
    invoke-interface {p1, v0, v3, v4}, Lcom/amazon/client/metrics/common/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 396
    invoke-interface {p1, v9}, Lcom/amazon/client/metrics/common/MetricEvent;->startTimer(Ljava/lang/String;)V

    .line 399
    invoke-direct/range {p0 .. p4}, Lcom/amazon/device/crashmanager/ArtifactUploader;->uploadArtifactWithRetries(Lcom/amazon/client/metrics/common/MetricEvent;Lcom/amazon/device/crashmanager/Artifact;Ljava/lang/String;Z)Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    invoke-interface {p1, v9}, Lcom/amazon/client/metrics/common/MetricEvent;->stopTimer(Ljava/lang/String;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 402
    :try_start_1
    sget-object v5, Lcom/amazon/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/dp/logger/DPLogger;

    iget-object v6, v7, Lcom/amazon/device/crashmanager/ArtifactUploader;->TAG:Ljava/lang/String;

    const-string v10, "Exception while uploading crashes"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {v5, v6, v10, v1}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v1, "uploadFailed"

    .line 405
    invoke-interface {p1, v1, v3, v4}, Lcom/amazon/client/metrics/common/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    const-string/jumbo v1, "uploadUnknowException"

    .line 406
    invoke-interface {p1, v1, v3, v4}, Lcom/amazon/client/metrics/common/MetricEvent;->addCounter(Ljava/lang/String;D)V

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uploadUnknowException."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 408
    invoke-interface {p1, v1, v3, v4}, Lcom/amazon/client/metrics/common/MetricEvent;->addCounter(Ljava/lang/String;D)V

    .line 409
    invoke-direct {p0, v0}, Lcom/amazon/device/crashmanager/ArtifactUploader;->getExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v6

    .line 412
    new-instance v0, Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;

    sget-object v3, Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;->SKIP:Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;

    invoke-virtual/range {p2 .. p2}, Lcom/amazon/device/crashmanager/Artifact;->getCrashDescriptor()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "uploadUnknownExceptionMessage"

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;-><init>(Lcom/amazon/device/crashmanager/ArtifactUploader;Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 415
    invoke-interface {p1, v9}, Lcom/amazon/client/metrics/common/MetricEvent;->stopTimer(Ljava/lang/String;)V

    return-object v0

    :goto_0
    invoke-interface {p1, v9}, Lcom/amazon/client/metrics/common/MetricEvent;->stopTimer(Ljava/lang/String;)V

    .line 416
    throw v0
.end method

.method public uploadArtifacts(Lcom/amazon/client/metrics/common/MetricEvent;)Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatistics;
    .locals 1

    const/4 v0, 0x0

    .line 195
    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/crashmanager/ArtifactUploader;->uploadArtifacts(Lcom/amazon/client/metrics/common/MetricEvent;Ljava/lang/String;)Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatistics;

    move-result-object p1

    return-object p1
.end method

.method public uploadArtifacts(Lcom/amazon/client/metrics/common/MetricEvent;Ljava/lang/String;)Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatistics;
    .locals 22

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const-string/jumbo v9, "uploadExceptions"

    const-string v10, "crashDescriptor"

    .line 208
    iget-boolean v0, v7, Lcom/amazon/device/crashmanager/ArtifactUploader;->mAllowWANUpload:Z

    const-string/jumbo v1, "noUsableConnection"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/4 v11, 0x0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, v7, Lcom/amazon/device/crashmanager/ArtifactUploader;->mNetworkManager:Lcom/amazon/device/utils/det/NetworkManager;

    invoke-virtual {v0}, Lcom/amazon/device/utils/det/NetworkManager;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 210
    sget-object v0, Lcom/amazon/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/dp/logger/DPLogger;

    iget-object v4, v7, Lcom/amazon/device/crashmanager/ArtifactUploader;->TAG:Ljava/lang/String;

    new-array v5, v11, [Ljava/lang/Object;

    const-string v6, "Cannot upload crashes since device not connected to a network"

    invoke-virtual {v0, v4, v6, v5}, Lcom/amazon/dp/logger/DPLoggerBase;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    iget-object v0, v7, Lcom/amazon/device/crashmanager/ArtifactUploader;->mStatusNotifier:Lcom/amazon/device/utils/det/StatusNotifier;

    const-string v4, "Cannot upload crashes due to no connectivity"

    invoke-interface {v0, v4}, Lcom/amazon/device/utils/det/StatusNotifier;->broadcastUploadStatus(Ljava/lang/CharSequence;)V

    .line 212
    invoke-interface {v8, v1, v2, v3}, Lcom/amazon/client/metrics/common/MetricEvent;->addCounter(Ljava/lang/String;D)V

    .line 214
    new-instance v0, Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatistics;

    sget-object v3, Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;->FAILURE:Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatistics;-><init>(Lcom/amazon/device/crashmanager/ArtifactUploader;Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;III)V

    return-object v0

    .line 216
    :cond_0
    iget-object v0, v7, Lcom/amazon/device/crashmanager/ArtifactUploader;->mNetworkManager:Lcom/amazon/device/utils/det/NetworkManager;

    invoke-virtual {v0}, Lcom/amazon/device/utils/det/NetworkManager;->isWifiConnected()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v7, Lcom/amazon/device/crashmanager/ArtifactUploader;->mNetworkManager:Lcom/amazon/device/utils/det/NetworkManager;

    invoke-virtual {v0}, Lcom/amazon/device/utils/det/NetworkManager;->isEthernetConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 217
    sget-object v0, Lcom/amazon/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/dp/logger/DPLogger;

    iget-object v4, v7, Lcom/amazon/device/crashmanager/ArtifactUploader;->TAG:Ljava/lang/String;

    new-array v5, v11, [Ljava/lang/Object;

    const-string v6, "Cannot upload crashes since device is not connected to wifi or ethernet."

    invoke-virtual {v0, v4, v6, v5}, Lcom/amazon/dp/logger/DPLoggerBase;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    iget-object v0, v7, Lcom/amazon/device/crashmanager/ArtifactUploader;->mStatusNotifier:Lcom/amazon/device/utils/det/StatusNotifier;

    const-string v4, "Cannot upload crashes due to no usable connection"

    invoke-interface {v0, v4}, Lcom/amazon/device/utils/det/StatusNotifier;->broadcastUploadStatus(Ljava/lang/CharSequence;)V

    .line 220
    invoke-interface {v8, v1, v2, v3}, Lcom/amazon/client/metrics/common/MetricEvent;->addCounter(Ljava/lang/String;D)V

    .line 221
    new-instance v0, Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatistics;

    sget-object v3, Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;->FAILURE:Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatistics;-><init>(Lcom/amazon/device/crashmanager/ArtifactUploader;Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;III)V

    return-object v0

    .line 224
    :cond_1
    iget-object v0, v7, Lcom/amazon/device/crashmanager/ArtifactUploader;->mStatusNotifier:Lcom/amazon/device/utils/det/StatusNotifier;

    const-string v1, "Uploading artifacts."

    invoke-interface {v0, v1}, Lcom/amazon/device/utils/det/StatusNotifier;->broadcastUploadStatus(Ljava/lang/CharSequence;)V

    .line 225
    sget-object v0, Lcom/amazon/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/dp/logger/DPLogger;

    iget-object v4, v7, Lcom/amazon/device/crashmanager/ArtifactUploader;->TAG:Ljava/lang/String;

    new-array v5, v11, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v1, v5}, Lcom/amazon/dp/logger/DPLoggerBase;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 229
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    const/4 v14, 0x1

    .line 235
    :try_start_0
    iget-object v0, v7, Lcom/amazon/device/crashmanager/ArtifactUploader;->mArtifactSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/amazon/device/crashmanager/source/ArtifactSource;

    .line 236
    instance-of v11, v15, Lcom/amazon/device/crashmanager/source/DropBoxArtifactSource;

    if-eqz v11, :cond_2

    .line 238
    move-object v0, v15

    check-cast v0, Lcom/amazon/device/crashmanager/source/DropBoxArtifactSource;

    invoke-direct {v7, v0, v8}, Lcom/amazon/device/crashmanager/ArtifactUploader;->buildDedupeMapFromDropbox(Lcom/amazon/device/crashmanager/source/DropBoxArtifactSource;Lcom/amazon/client/metrics/common/MetricEvent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v6

    :goto_1
    :try_start_2
    const-string v0, "ARTIFACT_UPLOAD"

    .line 240
    invoke-interface {v15, v8, v0}, Lcom/amazon/device/crashmanager/source/ArtifactSource;->getNextArtifact(Lcom/amazon/client/metrics/common/MetricEvent;Ljava/lang/String;)Lcom/amazon/device/crashmanager/Artifact;

    move-result-object v4

    if-eqz v4, :cond_e

    const-string/jumbo v0, "numArtifactsRead"

    .line 241
    invoke-interface {v8, v0, v2, v3}, Lcom/amazon/client/metrics/common/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    move-object/from16 v5, p2

    .line 242
    invoke-virtual {v7, v8, v4, v5, v11}, Lcom/amazon/device/crashmanager/ArtifactUploader;->uploadArtifact(Lcom/amazon/client/metrics/common/MetricEvent;Lcom/amazon/device/crashmanager/Artifact;Ljava/lang/String;Z)Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 249
    :try_start_3
    invoke-virtual {v4}, Lcom/amazon/device/crashmanager/Artifact;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v21, v1

    goto :goto_2

    :catch_0
    move-exception v0

    move-object/from16 v20, v0

    .line 251
    :try_start_4
    sget-object v0, Lcom/amazon/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/dp/logger/DPLogger;

    iget-object v2, v7, Lcom/amazon/device/crashmanager/ArtifactUploader;->TAG:Ljava/lang/String;

    const-string v3, "Failed to close artifact."

    move-object/from16 v21, v1

    new-array v1, v14, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v20, v1, v16

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/dp/logger/DPLoggerBase;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    :goto_2
    invoke-virtual {v6}, Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;->getCrashDescriptor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 257
    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_3
    invoke-static {v6}, Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;->access$000(Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;)Ljava/lang/String;

    move-result-object v0

    .line 262
    invoke-virtual {v6}, Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;->getUploadErrorTag()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_4
    sget-object v0, Lcom/amazon/device/crashmanager/ArtifactUploader$1;->$SwitchMap$com$amazon$device$crashmanager$ArtifactUploader$ArtifactUploadStatus:[I

    invoke-virtual {v6}, Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;->getArtifactUploadStatus()Lcom/amazon/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v14, :cond_d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    const/4 v1, 0x4

    if-eq v0, v1, :cond_8

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    :goto_3
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_8

    .line 312
    :cond_5
    sget-object v0, Lcom/amazon/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/dp/logger/DPLogger;

    iget-object v1, v7, Lcom/amazon/device/crashmanager/ArtifactUploader;->TAG:Ljava/lang/String;

    const-string v2, "Receiving consistent 500\'s from Server. CrashUpload will halt now and will be retried later"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v4}, Lcom/amazon/dp/logger/DPLoggerBase;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    new-instance v0, Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatistics;

    sget-object v3, Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;->SERVER_ERROR:Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;

    move-object v1, v0

    move-object/from16 v2, p0

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    invoke-direct/range {v1 .. v6}, Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatistics;-><init>(Lcom/amazon/device/crashmanager/ArtifactUploader;Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;III)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 327
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 328
    invoke-interface {v8, v10, v2}, Lcom/amazon/client/metrics/common/MetricEvent;->addString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 332
    :cond_6
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 333
    invoke-interface {v8, v9, v2}, Lcom/amazon/client/metrics/common/MetricEvent;->addString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    return-object v0

    .line 303
    :cond_8
    :try_start_5
    sget-object v0, Lcom/amazon/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/dp/logger/DPLogger;

    iget-object v1, v7, Lcom/amazon/device/crashmanager/ArtifactUploader;->TAG:Ljava/lang/String;

    const-string v2, "Failed to upload artifact after local retries. CrashUpload will halt now and will be retried later"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v4}, Lcom/amazon/dp/logger/DPLoggerBase;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    new-instance v0, Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatistics;

    sget-object v3, Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;->FAILURE:Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;

    move-object v1, v0

    move-object/from16 v2, p0

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    invoke-direct/range {v1 .. v6}, Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatistics;-><init>(Lcom/amazon/device/crashmanager/ArtifactUploader;Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;III)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 327
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 328
    invoke-interface {v8, v10, v2}, Lcom/amazon/client/metrics/common/MetricEvent;->addString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 332
    :cond_9
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 333
    invoke-interface {v8, v9, v2}, Lcom/amazon/client/metrics/common/MetricEvent;->addString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_a
    return-object v0

    :cond_b
    add-int/lit8 v19, v19, 0x1

    .line 292
    :try_start_6
    sget-object v0, Lcom/amazon/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/dp/logger/DPLogger;

    iget-object v1, v7, Lcom/amazon/device/crashmanager/ArtifactUploader;->TAG:Ljava/lang/String;

    const-string v2, "Skipped an artifact since this is a dupe and original artifact already uploaded"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v4}, Lcom/amazon/dp/logger/DPLoggerBase;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v0, "numArtifactsSkipped"

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 293
    invoke-interface {v8, v0, v1, v2}, Lcom/amazon/client/metrics/common/MetricEvent;->addCounter(Ljava/lang/String;D)V

    .line 295
    invoke-interface {v15}, Lcom/amazon/device/crashmanager/source/ArtifactSource;->saveCurrentIndex()V

    goto/16 :goto_3

    :cond_c
    add-int/lit8 v18, v18, 0x1

    .line 285
    sget-object v0, Lcom/amazon/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/dp/logger/DPLogger;

    iget-object v1, v7, Lcom/amazon/device/crashmanager/ArtifactUploader;->TAG:Ljava/lang/String;

    const-string v2, "Skipped an artifact due to client error"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v4}, Lcom/amazon/dp/logger/DPLoggerBase;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v0, "numArtifactsFailed"

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 286
    invoke-interface {v8, v0, v1, v2}, Lcom/amazon/client/metrics/common/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 288
    invoke-interface {v15}, Lcom/amazon/device/crashmanager/source/ArtifactSource;->saveCurrentIndex()V

    goto/16 :goto_3

    :cond_d
    add-int/lit8 v17, v17, 0x1

    .line 278
    sget-object v0, Lcom/amazon/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/dp/logger/DPLogger;

    iget-object v1, v7, Lcom/amazon/device/crashmanager/ArtifactUploader;->TAG:Ljava/lang/String;

    const-string v2, "Uploaded an artifact."

    const/4 v3, 0x0

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v6}, Lcom/amazon/dp/logger/DPLoggerBase;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v0, "numArtifactsUploaded"

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 279
    invoke-interface {v8, v0, v1, v2}, Lcom/amazon/client/metrics/common/MetricEvent;->addCounter(Ljava/lang/String;D)V

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/amazon/device/crashmanager/Artifact;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-interface {v8, v0, v1, v2}, Lcom/amazon/client/metrics/common/MetricEvent;->addCounter(Ljava/lang/String;D)V

    .line 281
    invoke-interface {v15}, Lcom/amazon/device/crashmanager/source/ArtifactSource;->saveCurrentIndex()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_8
    move-wide v2, v1

    move-object/from16 v1, v21

    goto/16 :goto_1

    :cond_e
    move-object/from16 v5, p2

    move-object/from16 v21, v1

    move-wide v1, v2

    move-wide v2, v1

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v1, v21

    const/4 v11, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    goto/16 :goto_b

    .line 327
    :cond_f
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 328
    invoke-interface {v8, v10, v1}, Lcom/amazon/client/metrics/common/MetricEvent;->addString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 332
    :cond_10
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 333
    invoke-interface {v8, v9, v1}, Lcom/amazon/client/metrics/common/MetricEvent;->addString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 337
    :cond_11
    sget-object v0, Lcom/amazon/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/dp/logger/DPLogger;

    iget-object v1, v7, Lcom/amazon/device/crashmanager/ArtifactUploader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished uploading artifacts. Uploaded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " artifacts."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v8}, Lcom/amazon/dp/logger/DPLoggerBase;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    iget-object v0, v7, Lcom/amazon/device/crashmanager/ArtifactUploader;->mStatusNotifier:Lcom/amazon/device/utils/det/StatusNotifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uploaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/device/utils/det/StatusNotifier;->broadcastUploadStatus(Ljava/lang/CharSequence;)V

    .line 341
    iget-object v0, v7, Lcom/amazon/device/crashmanager/ArtifactUploader;->crashDedupeUtil:Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;

    invoke-interface {v0}, Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;->clearAll()V

    .line 343
    new-instance v0, Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatistics;

    sget-object v3, Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;->SUCCESS:Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;

    move-object v1, v0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatistics;-><init>(Lcom/amazon/device/crashmanager/ArtifactUploader;Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;III)V

    return-object v0

    :catch_2
    move-exception v0

    goto :goto_b

    :catchall_0
    move-exception v0

    goto :goto_e

    :catch_3
    move-exception v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 320
    :goto_b
    :try_start_7
    sget-object v1, Lcom/amazon/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/dp/logger/DPLogger;

    iget-object v2, v7, Lcom/amazon/device/crashmanager/ArtifactUploader;->TAG:Ljava/lang/String;

    const-string v3, "Exception thrown while uploading crash entries"

    new-array v11, v14, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v0, v11, v14

    invoke-virtual {v1, v2, v3, v11}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    iget-object v1, v7, Lcom/amazon/device/crashmanager/ArtifactUploader;->mStatusNotifier:Lcom/amazon/device/utils/det/StatusNotifier;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while uploading artifacts:\n "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/amazon/device/utils/det/StatusNotifier;->broadcastUploadStatus(Ljava/lang/CharSequence;)V

    .line 323
    new-instance v0, Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatistics;

    sget-object v3, Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;->FAILURE:Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;

    move-object v1, v0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatistics;-><init>(Lcom/amazon/device/crashmanager/ArtifactUploader;Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatus;III)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 327
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 328
    invoke-interface {v8, v10, v2}, Lcom/amazon/client/metrics/common/MetricEvent;->addString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 332
    :cond_12
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 333
    invoke-interface {v8, v9, v2}, Lcom/amazon/client/metrics/common/MetricEvent;->addString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_13
    return-object v0

    .line 327
    :goto_e
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 328
    invoke-interface {v8, v10, v2}, Lcom/amazon/client/metrics/common/MetricEvent;->addString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 332
    :cond_14
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 333
    invoke-interface {v8, v9, v2}, Lcom/amazon/client/metrics/common/MetricEvent;->addString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 335
    :cond_15
    throw v0
.end method
