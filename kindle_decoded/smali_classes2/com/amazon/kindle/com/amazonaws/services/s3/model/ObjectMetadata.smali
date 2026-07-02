.class public Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;
.super Ljava/lang/Object;
.source "ObjectMetadata.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ServerSideEncryptionResult;
.implements Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3RequesterChargedResult;
.implements Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ObjectExpirationResult;
.implements Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ObjectRestoreResult;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field public static final KMS_SERVER_SIDE_ENCRYPTION:Ljava/lang/String;


# instance fields
.field private expirationTime:Ljava/util/Date;

.field private expirationTimeRuleId:Ljava/lang/String;

.field private httpExpiresDate:Ljava/util/Date;

.field private metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private ongoingRestore:Ljava/lang/Boolean;

.field private restoreExpirationTime:Ljava/util/Date;

.field private userMetadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAlgorithm;->AES256:Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAlgorithm;

    .line 62
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAlgorithm;->getAlgorithm()Ljava/lang/String;

    .line 64
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAlgorithm;->KMS:Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAlgorithm;

    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAlgorithm;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->KMS_SERVER_SIDE_ENCRYPTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->userMetadata:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;)V
    .locals 3

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->userMetadata:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    .line 100
    iget-object v0, p1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->userMetadata:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    iget-object v2, p1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->userMetadata:Ljava/util/Map;

    invoke-direct {v0, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    :goto_0
    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->userMetadata:Ljava/util/Map;

    .line 104
    iget-object v0, p1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/util/TreeMap;

    iget-object v0, p1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    invoke-direct {v1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    :goto_1
    iput-object v1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    .line 107
    iget-object v0, p1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->expirationTime:Ljava/util/Date;

    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/util/DateUtils;->cloneDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->expirationTime:Ljava/util/Date;

    .line 108
    iget-object v0, p1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->expirationTimeRuleId:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->expirationTimeRuleId:Ljava/lang/String;

    .line 109
    iget-object v0, p1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->httpExpiresDate:Ljava/util/Date;

    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/util/DateUtils;->cloneDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->httpExpiresDate:Ljava/util/Date;

    .line 110
    iget-object v0, p1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->ongoingRestore:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->ongoingRestore:Ljava/lang/Boolean;

    .line 111
    iget-object p1, p1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->restoreExpirationTime:Ljava/util/Date;

    invoke-static {p1}, Lcom/amazon/kindle/com/amazonaws/util/DateUtils;->cloneDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->restoreExpirationTime:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->userMetadata:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clone()Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;
    .locals 1

    .line 867
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;-><init>(Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->clone()Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v1, "Content-Length"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 296
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentMD5()Ljava/lang/String;
    .locals 2

    .line 582
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v1, "Content-MD5"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getETag()Ljava/lang/String;
    .locals 2

    .line 646
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v1, "ETag"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getExpirationTime()Ljava/util/Date;
    .locals 1

    .line 739
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->expirationTime:Ljava/util/Date;

    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/util/DateUtils;->cloneDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getExpirationTimeRuleId()Ljava/lang/String;
    .locals 1

    .line 760
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->expirationTimeRuleId:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpExpiresDate()Ljava/util/Date;
    .locals 1

    .line 828
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->httpExpiresDate:Ljava/util/Date;

    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/util/DateUtils;->cloneDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getInstanceLength()J
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v1, "Content-Range"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "/"

    .line 308
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 313
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRawMetadata()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 230
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 231
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 232
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRawMetadataValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getSSEAlgorithm()Ljava/lang/String;
    .locals 2

    .line 666
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string/jumbo v1, "x-amz-server-side-encryption"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSSECustomerAlgorithm()Ljava/lang/String;
    .locals 2

    .line 702
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string/jumbo v1, "x-amz-server-side-encryption-customer-algorithm"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSSECustomerKeyMd5()Ljava/lang/String;
    .locals 2

    .line 720
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string/jumbo v1, "x-amz-server-side-encryption-customer-key-MD5"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUserMetadata()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->userMetadata:Ljava/util/Map;

    return-object v0
.end method

.method public getVersionId()Ljava/lang/String;
    .locals 2

    .line 657
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string/jumbo v1, "x-amz-version-id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isRequesterCharged()Z
    .locals 2

    .line 881
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string/jumbo v1, "x-amz-request-charged"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCacheControl(Ljava/lang/String;)V
    .locals 2

    .line 523
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v1, "Cache-Control"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentDisposition(Ljava/lang/String;)V
    .locals 2

    .line 602
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v1, "Content-Disposition"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentEncoding(Ljava/lang/String;)V
    .locals 2

    .line 484
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v1, "Content-Encoding"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentLength(J)V
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "Content-Length"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentMD5(Ljava/lang/String;)V
    .locals 2

    const-string v0, "Content-MD5"

    if-nez p1, :cond_0

    .line 551
    iget-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 553
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 2

    .line 396
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v1, "Content-Type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setExpirationTime(Ljava/util/Date;)V
    .locals 0

    .line 751
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->expirationTime:Ljava/util/Date;

    return-void
.end method

.method public setExpirationTimeRuleId(Ljava/lang/String;)V
    .locals 0

    .line 771
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->expirationTimeRuleId:Ljava/lang/String;

    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setHttpExpiresDate(Ljava/util/Date;)V
    .locals 0

    .line 821
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->httpExpiresDate:Ljava/util/Date;

    return-void
.end method

.method public setOngoingRestore(Z)V
    .locals 0

    .line 805
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->ongoingRestore:Ljava/lang/Boolean;

    return-void
.end method

.method public setRequesterCharged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 887
    iget-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string/jumbo v0, "x-amz-request-charged"

    const-string v1, "requester"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setRestoreExpirationTime(Ljava/util/Date;)V
    .locals 0

    .line 795
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->restoreExpirationTime:Ljava/util/Date;

    return-void
.end method

.method public setSSEAlgorithm(Ljava/lang/String;)V
    .locals 2

    .line 686
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string/jumbo v1, "x-amz-server-side-encryption"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSSECustomerAlgorithm(Ljava/lang/String;)V
    .locals 2

    .line 712
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string/jumbo v1, "x-amz-server-side-encryption-customer-algorithm"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSSECustomerKeyMd5(Ljava/lang/String;)V
    .locals 2

    .line 730
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string/jumbo v1, "x-amz-server-side-encryption-customer-key-MD5"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setUserMetadata(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 178
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->userMetadata:Ljava/util/Map;

    return-void
.end method
