.class public Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3Signer;
.super Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner;
.source "S3Signer.java"


# static fields
.field private static final log:Lcom/amazon/kindle/com/amazonaws/logging/Log;


# instance fields
.field private final additionalQueryParamsToSign:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final httpVerb:Ljava/lang/String;

.field private final resourcePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3Signer;

    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;->getLog(Ljava/lang/Class;)Lcom/amazon/kindle/com/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3Signer;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3Signer;->httpVerb:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3Signer;->resourcePath:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3Signer;->additionalQueryParamsToSign:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3Signer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner;-><init>()V

    if-eqz p2, :cond_1

    .line 122
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3Signer;->httpVerb:Ljava/lang/String;

    .line 123
    iput-object p2, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3Signer;->resourcePath:Ljava/lang/String;

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 124
    :cond_0
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 126
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3Signer;->additionalQueryParamsToSign:Ljava/util/Set;

    return-void

    .line 118
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parameter resourcePath is empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected addSessionCredentials(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/auth/AWSSessionCredentials;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;",
            "Lcom/amazon/kindle/com/amazonaws/auth/AWSSessionCredentials;",
            ")V"
        }
    .end annotation

    .line 186
    invoke-interface {p2}, Lcom/amazon/kindle/com/amazonaws/auth/AWSSessionCredentials;->getSessionToken()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "x-amz-security-token"

    invoke-interface {p1, v0, p2}, Lcom/amazon/kindle/com/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sign(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;",
            "Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 181
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3Signer;->sign(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;Ljava/util/Date;)V

    return-void
.end method

.method sign(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;Ljava/util/Date;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;",
            "Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3Signer;->resourcePath:Ljava/lang/String;

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    .line 141
    invoke-interface {p2}, Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;->getAWSSecretKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 146
    :cond_0
    invoke-virtual {p0, p2}, Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner;->sanitizeCredentials(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;)Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;

    move-result-object p2

    .line 147
    instance-of v0, p2, Lcom/amazon/kindle/com/amazonaws/auth/AWSSessionCredentials;

    if-eqz v0, :cond_1

    .line 148
    move-object v0, p2

    check-cast v0, Lcom/amazon/kindle/com/amazonaws/auth/AWSSessionCredentials;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3Signer;->addSessionCredentials(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/auth/AWSSessionCredentials;)V

    .line 158
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getEndpoint()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3Signer;->resourcePath:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/com/amazonaws/util/HttpUtils;->appendUri(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner;->getTimeOffset(Lcom/amazon/kindle/com/amazonaws/Request;)I

    move-result v1

    .line 162
    invoke-virtual {p0, v1}, Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner;->getSignatureDate(I)Ljava/util/Date;

    move-result-object v1

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    move-object p3, v1

    .line 168
    :goto_0
    invoke-static {p3}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ServiceUtils;->formatRfc822Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "Date"

    invoke-interface {p1, v1, p3}, Lcom/amazon/kindle/com/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object p3, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3Signer;->httpVerb:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3Signer;->additionalQueryParamsToSign:Ljava/util/Set;

    invoke-static {p3, v0, p1, v1, v2}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/RestUtils;->makeS3CanonicalString(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/com/amazonaws/Request;Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p3

    .line 171
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3Signer;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calculated string to sign:\n\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->debug(Ljava/lang/Object;)V

    .line 174
    invoke-interface {p2}, Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;->getAWSSecretKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/auth/SigningAlgorithm;->HmacSHA1:Lcom/amazon/kindle/com/amazonaws/auth/SigningAlgorithm;

    .line 173
    invoke-super {p0, p3, v0, v1}, Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner;->signAndBase64Encode(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/com/amazonaws/auth/SigningAlgorithm;)Ljava/lang/String;

    move-result-object p3

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AWS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;->getAWSAccessKeyId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Authorization"

    invoke-interface {p1, p3, p2}, Lcom/amazon/kindle/com/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 142
    :cond_3
    :goto_1
    sget-object p1, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3Signer;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    const-string p2, "Canonical string will not be signed, as no AWS Secret Key was provided"

    invoke-interface {p1, p2}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->debug(Ljava/lang/Object;)V

    return-void

    .line 136
    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Cannot sign a request using a dummy S3Signer instance with no resource path"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
