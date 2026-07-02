.class public Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ServiceUtils;
.super Ljava/lang/Object;
.source "ServiceUtils.java"


# static fields
.field private static final DEAFAULT_BYTE_SIZE:I = 0x2800

.field private static final log:Lcom/amazon/kindle/com/amazonaws/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const-class v0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ServiceUtils;

    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;->getLog(Ljava/lang/Class;)Lcom/amazon/kindle/com/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ServiceUtils;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    .line 70
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/util/DateUtils;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/util/DateUtils;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertRequestToUrl(Lcom/amazon/kindle/com/amazonaws/Request;Z)Ljava/net/URL;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;Z)",
            "Ljava/net/URL;"
        }
    .end annotation

    .line 187
    invoke-interface {p0}, Lcom/amazon/kindle/com/amazonaws/Request;->getResourcePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3HttpUtils;->urlEncode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    if-eqz p1, :cond_0

    .line 192
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 200
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "(?<=/)/"

    const-string v2, "%2F"

    .line 201
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/amazon/kindle/com/amazonaws/Request;->getEndpoint()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 205
    invoke-interface {p0}, Lcom/amazon/kindle/com/amazonaws/Request;->getParameters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    goto :goto_1

    .line 210
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 213
    :goto_1
    invoke-interface {p0}, Lcom/amazon/kindle/com/amazonaws/Request;->getParameters()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 214
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v3}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3HttpUtils;->urlEncode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 218
    :cond_2
    :try_start_0
    new-instance p0, Ljava/net/URL;

    invoke-direct {p0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 220
    new-instance p1, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to convert request to well formed URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {p0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static formatRfc822Date(Ljava/util/Date;)Ljava/lang/String;
    .locals 0

    .line 105
    invoke-static {p0}, Lcom/amazon/kindle/com/amazonaws/util/DateUtils;->formatRFC822Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isMultipartUploadETag(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "-"

    .line 117
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static join(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 238
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v0, ""

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 243
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static parseRfc822Date(Ljava/lang/String;)Ljava/util/Date;
    .locals 0

    .line 96
    invoke-static {p0}, Lcom/amazon/kindle/com/amazonaws/util/DateUtils;->parseRFC822Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static removeQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 146
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\""

    .line 147
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 148
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 150
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 151
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static skipMd5CheckPerRequest(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Z
    .locals 3

    const-string v0, "com.amazon.kindle.com.amazonaws.services.s3.disableGetObjectMD5Validation"

    .line 439
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 443
    :cond_0
    instance-of v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 444
    check-cast p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;

    .line 446
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;->getRange()[J

    move-result-object v0

    if-eqz v0, :cond_1

    return v1

    .line 449
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;->getSSECustomerKey()Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object p0

    if-eqz p0, :cond_7

    return v1

    .line 452
    :cond_2
    instance-of v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;

    if-eqz v0, :cond_5

    .line 453
    check-cast p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;

    .line 454
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->getMetadata()Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 455
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->getSSEAlgorithm()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    return v1

    .line 458
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->getSSECustomerKey()Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 459
    :cond_5
    instance-of v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;

    if-eqz v0, :cond_7

    .line 460
    check-cast p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;

    .line 461
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->getSSECustomerKey()Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object p0

    if-eqz p0, :cond_6

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_7
    return v2
.end method

.method public static skipMd5CheckPerResponse(Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 425
    :cond_0
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAlgorithm;->KMS:Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAlgorithm;

    invoke-virtual {v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAlgorithm;->toString()Ljava/lang/String;

    move-result-object v1

    .line 426
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->getSSEAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 425
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 427
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->getSSECustomerAlgorithm()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method
