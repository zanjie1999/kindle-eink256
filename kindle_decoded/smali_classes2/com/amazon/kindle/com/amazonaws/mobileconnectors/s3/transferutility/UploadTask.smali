.class Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;
.super Ljava/lang/Object;
.source "UploadTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;,
        Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;
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
.field private static final CANNED_ACL_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

.field private static final OBJECT_TAGS_DELIMITER:Ljava/lang/String; = "&"

.field private static final OBJECT_TAG_KEY_VALUE_SEPARATOR:Ljava/lang/String; = "="

.field private static final REQUESTER_PAYS:Ljava/lang/String; = "requester"


# instance fields
.field private final dbUtil:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

.field private requestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final s3:Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3;

.field private final updater:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

.field private final upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

.field uploadPartTasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 60
    const-class v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;

    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;->getLog(Ljava/lang/Class;)Lcom/amazon/kindle/com/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    .line 438
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->CANNED_ACL_MAP:Ljava/util/Map;

    .line 439
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;->values()[Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 440
    sget-object v4, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->CANNED_ACL_MAP:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3;Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 78
    iput-object p2, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->s3:Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3;

    .line 79
    iput-object p3, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->dbUtil:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    .line 80
    iput-object p4, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->updater:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 81
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->uploadPartTasks:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000()Lcom/amazon/kindle/com/amazonaws/logging/Log;
    .locals 1

    .line 58
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;)Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;)Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->updater:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    return-object p0
.end method

.method private completeMultiPartUpload(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->dbUtil:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->queryPartETagsOfUpload(I)Ljava/util/List;

    move-result-object p1

    .line 325
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadRequest;

    invoke-direct {v0, p2, p3, p4, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 327
    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->appendMultipartTransferServiceUserAgentString(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;

    .line 328
    iget-object p1, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->s3:Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3;->completeMultipartUpload(Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    return-void
.end method

.method private createPutObjectRequest(Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;
    .locals 11

    .line 358
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->file:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 359
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;

    iget-object v2, p1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->bucketName:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->key:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 362
    new-instance v2, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v2}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 363
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->setContentLength(J)V

    .line 365
    iget-object v3, p1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->headerCacheControl:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 366
    invoke-virtual {v2, v3}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->setCacheControl(Ljava/lang/String;)V

    .line 368
    :cond_0
    iget-object v3, p1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->headerContentDisposition:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 369
    invoke-virtual {v2, v3}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->setContentDisposition(Ljava/lang/String;)V

    .line 371
    :cond_1
    iget-object v3, p1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->headerContentEncoding:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 372
    invoke-virtual {v2, v3}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->setContentEncoding(Ljava/lang/String;)V

    .line 374
    :cond_2
    iget-object v3, p1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->headerContentType:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 375
    invoke-virtual {v2, v3}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    goto :goto_0

    .line 377
    :cond_3
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->getInstance()Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/util/Mimetypes;->getMimetype(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    .line 379
    :goto_0
    iget-object v0, p1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->headerStorageClass:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 380
    invoke-virtual {v1, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->setStorageClass(Ljava/lang/String;)V

    .line 382
    :cond_4
    iget-object v0, p1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->expirationTimeRuleId:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 383
    invoke-virtual {v2, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->setExpirationTimeRuleId(Ljava/lang/String;)V

    .line 385
    :cond_5
    iget-object v0, p1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->httpExpires:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 386
    new-instance v0, Ljava/util/Date;

    iget-object v3, p1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->httpExpires:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->setHttpExpiresDate(Ljava/util/Date;)V

    .line 388
    :cond_6
    iget-object v0, p1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->sseAlgorithm:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 389
    invoke-virtual {v2, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->setSSEAlgorithm(Ljava/lang/String;)V

    .line 391
    :cond_7
    iget-object v0, p1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->userMetadata:Ljava/util/Map;

    if-eqz v0, :cond_b

    .line 392
    invoke-virtual {v2, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->setUserMetadata(Ljava/util/Map;)V

    .line 394
    iget-object v0, p1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->userMetadata:Ljava/util/Map;

    const-string/jumbo v3, "x-amz-tagging"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_9

    :try_start_0
    const-string v3, "&"

    .line 397
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 398
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 399
    array-length v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_8

    aget-object v7, v0, v6

    const-string v8, "="

    .line 400
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 401
    new-instance v8, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Tag;

    aget-object v9, v7, v5

    const/4 v10, 0x1

    aget-object v7, v7, v10

    invoke-direct {v8, v9, v7}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 403
    :cond_8
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectTagging;

    invoke-direct {v0, v3}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectTagging;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->setTagging(Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectTagging;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 405
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    const-string v4, "Error in passing the object tags as request headers."

    invoke-interface {v3, v4, v0}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 409
    :cond_9
    :goto_2
    iget-object v0, p1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->userMetadata:Ljava/util/Map;

    const-string/jumbo v3, "x-amz-website-redirect-location"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 411
    invoke-virtual {v1, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->setRedirectLocation(Ljava/lang/String;)V

    .line 414
    :cond_a
    iget-object v0, p1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->userMetadata:Ljava/util/Map;

    const-string/jumbo v3, "x-amz-request-payer"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_b

    const-string v3, "requester"

    .line 416
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;->setRequesterPays(Z)V

    .line 419
    :cond_b
    iget-object v0, p1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->md5:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 420
    invoke-virtual {v2, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->setContentMD5(Ljava/lang/String;)V

    .line 422
    :cond_c
    iget-object v0, p1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->sseKMSKey:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 423
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    invoke-direct {v3, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAwsKeyManagementParams;-><init>(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v1, v3}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->setSSEAwsKeyManagementParams(Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)V

    .line 427
    :cond_d
    invoke-virtual {v1, v2}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->setMetadata(Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 428
    iget-object p1, p1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->cannedAcl:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->getCannedAclFromString(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->setCannedAcl(Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;)V

    return-object v1
.end method

.method private static getCannedAclFromString(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 445
    :cond_0
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->CANNED_ACL_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

    :goto_0
    return-object p0
.end method

.method private initiateMultipartUpload(Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;)Ljava/lang/String;
    .locals 3

    .line 338
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    .line 339
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->getCannedAcl()Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->withCannedACL(Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    .line 341
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->getMetadata()Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->withObjectMetadata(Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    .line 343
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->getSSEAwsKeyManagementParams()Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    move-result-object p1

    .line 342
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->withSSEAwsKeyManagementParams(Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    .line 345
    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->appendMultipartTransferServiceUserAgentString(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;

    .line 346
    iget-object p1, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->s3:Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3;->initiateMultipartUpload(Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadResult;->getUploadId()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private uploadMultipartAndWaitForCompletion()Ljava/lang/Boolean;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 125
    iget-object v0, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget-object v0, v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->multipartId:Ljava/lang/String;

    const-string v2, " due to "

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 135
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    if-eqz v0, :cond_2

    .line 125
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->dbUtil:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    iget-object v8, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v8, v8, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-virtual {v0, v8}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->queryBytesTransferredByMainUploadId(I)J

    move-result-wide v8

    cmp-long v0, v8, v3

    if-lez v0, :cond_1

    .line 145
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v11, v11, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    .line 146
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v10, v5

    const-string v6, "Resume transfer %d from %d bytes"

    .line 145
    invoke-static {v6, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->info(Ljava/lang/Object;)V

    :cond_1
    move-wide v11, v8

    goto :goto_1

    .line 126
    :cond_2
    :goto_0
    iget-object v0, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    invoke-direct {v1, v0}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->createPutObjectRequest(Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v0

    .line 127
    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->appendMultipartTransferServiceUserAgentString(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;

    .line 129
    :try_start_0
    iget-object v6, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    invoke-direct {v1, v0}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->initiateMultipartUpload(Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->multipartId:Ljava/lang/String;
    :try_end_0
    .catch Lcom/amazon/kindle/com/amazonaws/AmazonClientException; {:try_start_0 .. :try_end_0} :catch_2

    .line 137
    iget-object v0, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->dbUtil:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    iget-object v6, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v8, v6, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    iget-object v6, v6, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->multipartId:Ljava/lang/String;

    invoke-virtual {v0, v8, v6}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->updateMultipartId(ILjava/lang/String;)I

    move-wide v11, v3

    .line 149
    :goto_1
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;

    iget-object v6, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    invoke-direct {v0, v1, v6}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;-><init>(Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;)V

    .line 150
    iget-object v9, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->updater:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v6, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v10, v6, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    iget-wide v13, v6, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->bytesTotal:J

    const/4 v15, 0x0

    invoke-virtual/range {v9 .. v15}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateProgress(IJJZ)V

    .line 152
    iget-object v6, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->dbUtil:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    iget-object v8, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v9, v8, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    iget-object v8, v8, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->multipartId:Ljava/lang/String;

    invoke-virtual {v6, v9, v8}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->getNonCompletedPartRequestsFromDB(ILjava/lang/String;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->requestList:Ljava/util/List;

    .line 154
    sget-object v6, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Multipart upload "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v9, v9, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->requestList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " parts."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->info(Ljava/lang/Object;)V

    .line 155
    iget-object v6, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->requestList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v16, v8

    check-cast v16, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;

    .line 156
    invoke-static/range {v16 .. v16}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->appendMultipartTransferServiceUserAgentString(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;

    .line 158
    new-instance v8, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;

    invoke-direct {v8, v1}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;-><init>(Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;)V

    .line 160
    iput-wide v3, v8, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;->bytesTransferredSoFar:J

    .line 161
    sget-object v9, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    iput-object v9, v8, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;->state:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 162
    iget-object v9, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->uploadPartTasks:Ljava/util/Map;

    invoke-virtual/range {v16 .. v16}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->getPartNumber()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    new-instance v9, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;

    iget-object v10, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->s3:Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3;

    iget-object v11, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->dbUtil:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    move-object v13, v9

    move-object v14, v8

    move-object v15, v0

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    invoke-direct/range {v13 .. v18}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;-><init>(Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3;Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;)V

    invoke-static {v9}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->submitTask(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v9

    iput-object v9, v8, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;->uploadPartTask:Ljava/util/concurrent/Future;

    goto :goto_2

    .line 173
    :cond_3
    :try_start_1
    iget-object v0, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->uploadPartTasks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x1

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;

    .line 176
    iget-object v4, v4, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;->uploadPartTask:Ljava/util/concurrent/Future;

    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    and-int/2addr v3, v4

    goto :goto_3

    :cond_4
    if-nez v3, :cond_6

    .line 182
    iget-object v0, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->dbUtil:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    iget-object v3, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v3, v3, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-virtual {v0, v3}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->checkWaitingForNetworkPartRequestsFromDB(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 184
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Network Connection Interrupted: Transfer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v4, v4, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " waits for network"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->info(Ljava/lang/Object;)V

    .line 185
    iget-object v0, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->updater:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v3, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v3, v3, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    sget-object v4, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v0, v3, v4}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateState(ILcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    return-object v7

    .line 234
    :cond_6
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Completing the multi-part upload transfer for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v4, v4, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->info(Ljava/lang/Object;)V

    .line 236
    :try_start_2
    iget-object v0, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v0, v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    iget-object v3, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget-object v3, v3, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->bucketName:Ljava/lang/String;

    iget-object v4, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget-object v4, v4, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->key:Ljava/lang/String;

    iget-object v6, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget-object v6, v6, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->multipartId:Ljava/lang/String;

    invoke-direct {v1, v0, v3, v4, v6}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->completeMultiPartUpload(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v8, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->updater:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v0, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v9, v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    iget-object v0, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget-wide v10, v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->bytesTotal:J

    iget-object v0, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget-wide v12, v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->bytesTotal:J

    const/4 v14, 0x1

    invoke-virtual/range {v8 .. v14}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateProgress(IJJZ)V

    .line 239
    iget-object v0, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->updater:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v3, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v3, v3, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    sget-object v4, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->COMPLETED:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v0, v3, v4}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateState(ILcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 240
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_2
    .catch Lcom/amazon/kindle/com/amazonaws/AmazonClientException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 242
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to complete multipart: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v5, v5, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 242
    invoke-interface {v3, v2, v0}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 244
    iget-object v2, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->updater:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v3, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v3, v3, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-virtual {v2, v3, v0}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->throwError(ILjava/lang/Exception;)V

    .line 245
    iget-object v0, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->updater:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v2, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v2, v2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    sget-object v3, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->FAILED:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v0, v2, v3}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateState(ILcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    return-object v7

    :catch_1
    move-exception v0

    .line 190
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Upload resulted in an exception. "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->error(Ljava/lang/Object;)V

    .line 197
    iget-object v3, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->uploadPartTasks:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;

    .line 198
    iget-object v4, v4, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;->uploadPartTask:Ljava/util/concurrent/Future;

    invoke-interface {v4, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_4

    .line 204
    :cond_7
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->CANCELED:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    iget-object v4, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget-object v4, v4, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->state:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    sget-object v3, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PAUSED:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    iget-object v4, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget-object v4, v4, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->state:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 205
    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto/16 :goto_5

    .line 212
    :cond_8
    iget-object v3, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->uploadPartTasks:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;

    .line 213
    sget-object v5, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    iget-object v4, v4, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;->state:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v5, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 214
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    const-string v2, "Individual part is WAITING_FOR_NETWORK."

    invoke-interface {v0, v2}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->info(Ljava/lang/Object;)V

    .line 215
    iget-object v0, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->updater:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v2, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v2, v2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    sget-object v3, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v0, v2, v3}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateState(ILcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    return-object v7

    .line 221
    :cond_a
    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/retry/RetryUtils;->isInterrupted(Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 222
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transfer is interrupted. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->info(Ljava/lang/Object;)V

    return-object v7

    .line 227
    :cond_b
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error encountered during multi-part upload: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v5, v5, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 227
    invoke-interface {v3, v2, v0}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 229
    iget-object v2, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->updater:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v3, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v3, v3, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-virtual {v2, v3, v0}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->throwError(ILjava/lang/Exception;)V

    .line 230
    iget-object v0, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->updater:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v2, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v2, v2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    sget-object v3, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->FAILED:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v0, v2, v3}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateState(ILcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    return-object v7

    .line 206
    :cond_c
    :goto_5
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transfer is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget-object v3, v3, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->state:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->info(Ljava/lang/Object;)V

    return-object v7

    :catch_2
    move-exception v0

    .line 131
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error initiating multipart upload: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v5, v5, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-interface {v3, v2, v0}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 133
    iget-object v2, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->updater:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v3, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v3, v3, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-virtual {v2, v3, v0}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->throwError(ILjava/lang/Exception;)V

    .line 134
    iget-object v0, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->updater:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v2, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v2, v2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    sget-object v3, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->FAILED:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v0, v2, v3}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateState(ILcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    return-object v7
.end method

.method private uploadSinglePartAndWaitForCompletion()Ljava/lang/Boolean;
    .locals 10

    .line 251
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    invoke-direct {p0, v0}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->createPutObjectRequest(Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v0

    .line 252
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->updater:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v2, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v2, v2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->newProgressListener(I)Lcom/amazon/kindle/com/amazonaws/event/ProgressListener;

    move-result-object v1

    .line 254
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 255
    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->appendTransferServiceUserAgentString(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;

    .line 256
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;->setGeneralProgressListener(Lcom/amazon/kindle/com/amazonaws/event/ProgressListener;)V

    .line 259
    :try_start_0
    iget-object v2, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->s3:Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3;

    invoke-interface {v2, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3;->putObject(Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectResult;

    .line 260
    iget-object v3, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->updater:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v4, v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    const/4 v9, 0x1

    move-wide v5, v7

    invoke-virtual/range {v3 .. v9}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateProgress(IJJZ)V

    .line 261
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->updater:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v2, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v2, v2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    sget-object v3, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->COMPLETED:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v0, v2, v3}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateState(ILcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    const/4 v0, 0x1

    .line 262
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 265
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->CANCELED:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    iget-object v3, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget-object v3, v3, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->state:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Transfer is "

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 266
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget-object v2, v2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->state:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->info(Ljava/lang/Object;)V

    .line 267
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 271
    :cond_0
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PAUSED:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    iget-object v5, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget-object v5, v5, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->state:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v2, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v5, 0x20

    const-wide/16 v6, 0x0

    if-eqz v2, :cond_1

    .line 272
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget-object v3, v3, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->state:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->info(Ljava/lang/Object;)V

    .line 273
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/event/ProgressEvent;

    invoke-direct {v0, v6, v7}, Lcom/amazon/kindle/com/amazonaws/event/ProgressEvent;-><init>(J)V

    .line 274
    invoke-virtual {v0, v5}, Lcom/amazon/kindle/com/amazonaws/event/ProgressEvent;->setEventCode(I)V

    .line 275
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/event/ProgressEvent;

    invoke-direct {v0, v6, v7}, Lcom/amazon/kindle/com/amazonaws/event/ProgressEvent;-><init>(J)V

    invoke-interface {v1, v0}, Lcom/amazon/kindle/com/amazonaws/event/ProgressListener;->progressChanged(Lcom/amazon/kindle/com/amazonaws/event/ProgressEvent;)V

    .line 276
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 283
    :cond_1
    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/retry/RetryUtils;->isInterrupted(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 286
    :try_start_1
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->getInstance()Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 287
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->getInstance()Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->isNetworkConnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 288
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Thread:["

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "]: Network wasn\'t available."

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->info(Ljava/lang/Object;)V

    .line 293
    iget-object v2, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->updater:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v3, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v3, v3, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    sget-object v8, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v2, v3, v8}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateState(ILcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 294
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    const-string v3, "Network Connection Interrupted: Moving the TransferState to WAITING_FOR_NETWORK"

    invoke-interface {v2, v3}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->debug(Ljava/lang/Object;)V

    .line 295
    new-instance v2, Lcom/amazon/kindle/com/amazonaws/event/ProgressEvent;

    invoke-direct {v2, v6, v7}, Lcom/amazon/kindle/com/amazonaws/event/ProgressEvent;-><init>(J)V

    .line 296
    invoke-virtual {v2, v5}, Lcom/amazon/kindle/com/amazonaws/event/ProgressEvent;->setEventCode(I)V

    .line 297
    new-instance v2, Lcom/amazon/kindle/com/amazonaws/event/ProgressEvent;

    invoke-direct {v2, v6, v7}, Lcom/amazon/kindle/com/amazonaws/event/ProgressEvent;-><init>(J)V

    invoke-interface {v1, v2}, Lcom/amazon/kindle/com/amazonaws/event/ProgressListener;->progressChanged(Lcom/amazon/kindle/com/amazonaws/event/ProgressEvent;)V

    .line 298
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_1
    .catch Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v1

    .line 301
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TransferUtilityException: ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->error(Ljava/lang/Object;)V

    .line 306
    :cond_2
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to upload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v3, v3, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->debug(Ljava/lang/Object;)V

    .line 307
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->updater:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v2, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v2, v2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-virtual {v1, v2, v0}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->throwError(ILjava/lang/Exception;)V

    .line 308
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->updater:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v1, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    sget-object v2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->FAILED:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateState(ILcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 309
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 90
    :try_start_0
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->getInstance()Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 91
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->getInstance()Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->isNetworkConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    const-string v2, "Network not connected. Setting the state to WAITING_FOR_NETWORK."

    invoke-interface {v1, v2}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->info(Ljava/lang/Object;)V

    .line 93
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->updater:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v2, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v2, v2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    sget-object v3, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateState(ILcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 94
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 97
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

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

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->updater:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v2, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v2, v2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    sget-object v3, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->IN_PROGRESS:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateState(ILcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 101
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v2, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->isMultipart:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget v1, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->partNumber:I

    if-nez v1, :cond_1

    .line 108
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->uploadMultipartAndWaitForCompletion()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->upload:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v1, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->isMultipart:I

    if-nez v1, :cond_2

    .line 113
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->uploadSinglePartAndWaitForCompletion()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 115
    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
