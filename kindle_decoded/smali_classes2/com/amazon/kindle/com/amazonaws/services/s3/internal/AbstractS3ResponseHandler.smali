.class public abstract Lcom/amazon/kindle/com/amazonaws/services/s3/internal/AbstractS3ResponseHandler;
.super Ljava/lang/Object;
.source "AbstractS3ResponseHandler.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/http/HttpResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/com/amazonaws/http/HttpResponseHandler<",
        "Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceResponse<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final IGNORED_HEADERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Lcom/amazon/kindle/com/amazonaws/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    const-class v0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3MetadataResponseHandler;

    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;->getLog(Ljava/lang/Class;)Lcom/amazon/kindle/com/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/AbstractS3ResponseHandler;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/AbstractS3ResponseHandler;->IGNORED_HEADERS:Ljava/util/Set;

    const-string v1, "Date"

    .line 55
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/AbstractS3ResponseHandler;->IGNORED_HEADERS:Ljava/util/Set;

    const-string v1, "Server"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/AbstractS3ResponseHandler;->IGNORED_HEADERS:Ljava/util/Set;

    const-string/jumbo v1, "x-amz-request-id"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/AbstractS3ResponseHandler;->IGNORED_HEADERS:Ljava/util/Set;

    const-string/jumbo v1, "x-amz-id-2"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/AbstractS3ResponseHandler;->IGNORED_HEADERS:Ljava/util/Set;

    const-string v1, "X-Amz-Cf-Id"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/AbstractS3ResponseHandler;->IGNORED_HEADERS:Ljava/util/Set;

    const-string v1, "Connection"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public needsConnectionLeftOpen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected parseResponseMetadata(Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;",
            ")",
            "Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceResponse<",
            "TT;>;"
        }
    .end annotation

    .line 86
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceResponse;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceResponse;-><init>()V

    .line 87
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "x-amz-request-id"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v3, "x-amz-id-2"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v3, "X-Amz-Cf-Id"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 91
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "AWS_REQUEST_ID"

    .line 92
    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "HOST_ID"

    .line 93
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CLOUD_FRONT_ID"

    .line 94
    invoke-interface {v3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance p1, Lcom/amazon/kindle/com/amazonaws/services/s3/S3ResponseMetadata;

    invoke-direct {p1, v3}, Lcom/amazon/kindle/com/amazonaws/services/s3/S3ResponseMetadata;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceResponse;->setResponseMetadata(Lcom/amazon/kindle/com/amazonaws/ResponseMetadata;)V

    return-object v0
.end method

.method protected populateObjectMetadata(Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;)V
    .locals 6

    .line 110
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 111
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "x-amz-meta-"

    .line 112
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xb

    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v2, v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_0
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/AbstractS3ResponseHandler;->IGNORED_HEADERS:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 116
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/AbstractS3ResponseHandler;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string v2, "%s is ignored."

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v3, "Last-Modified"

    .line 117
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 119
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ServiceUtils;->parseRfc822Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 121
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/AbstractS3ResponseHandler;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to parse last modified date: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    const-string v3, "Content-Length"

    .line 123
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 125
    :try_start_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v2

    .line 127
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/AbstractS3ResponseHandler;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to parse content length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_3
    const-string v3, "ETag"

    .line 129
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 130
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ServiceUtils;->removeQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    const-string v3, "Expires"

    .line 131
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 133
    :try_start_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/amazon/kindle/com/amazonaws/util/DateUtils;->parseRFC822Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->setHttpExpiresDate(Ljava/util/Date;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v2

    .line 135
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/AbstractS3ResponseHandler;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to parse http expiration date: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v3, "x-amz-expiration"

    .line 137
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 138
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;

    invoke-direct {v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;-><init>()V

    invoke-virtual {v1, p2, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;->handle(Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ObjectExpirationResult;Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v3, "x-amz-restore"

    .line 139
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 140
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ObjectRestoreHeaderHandler;

    invoke-direct {v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ObjectRestoreHeaderHandler;-><init>()V

    invoke-virtual {v1, p2, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ObjectRestoreHeaderHandler;->handle(Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ObjectRestoreResult;Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v3, "x-amz-request-charged"

    .line 141
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 142
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3RequesterChargedHeaderHandler;

    invoke-direct {v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3RequesterChargedHeaderHandler;-><init>()V

    invoke-virtual {v1, p2, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3RequesterChargedHeaderHandler;->handle(Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3RequesterChargedResult;Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v3, "x-amz-mp-parts-count"

    .line 144
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 146
    :try_start_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception p1

    .line 148
    new-instance p2, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to parse part count. Header x-amz-mp-parts-count has corrupted data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 154
    :cond_9
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    return-void
.end method
