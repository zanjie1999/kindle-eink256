.class public Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3QueryStringSigner;
.super Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner;
.source "S3QueryStringSigner.java"


# static fields
.field private static final TIME_TO_SECONDS:Ljava/lang/Long;


# instance fields
.field private final expiration:Ljava/util/Date;

.field private final httpVerb:Ljava/lang/String;

.field private final resourcePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 31
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3QueryStringSigner;->TIME_TO_SECONDS:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3QueryStringSigner;->httpVerb:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3QueryStringSigner;->resourcePath:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3QueryStringSigner;->expiration:Ljava/util/Date;

    if-eqz p2, :cond_0

    return-void

    .line 67
    :cond_0
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

    .line 93
    invoke-interface {p2}, Lcom/amazon/kindle/com/amazonaws/auth/AWSSessionCredentials;->getSessionToken()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "x-amz-security-token"

    invoke-interface {p1, v0, p2}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sign(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;",
            "Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;",
            ")V"
        }
    .end annotation

    .line 72
    invoke-virtual {p0, p2}, Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner;->sanitizeCredentials(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;)Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;

    move-result-object p2

    .line 74
    instance-of v0, p2, Lcom/amazon/kindle/com/amazonaws/auth/AWSSessionCredentials;

    if-eqz v0, :cond_0

    .line 75
    move-object v0, p2

    check-cast v0, Lcom/amazon/kindle/com/amazonaws/auth/AWSSessionCredentials;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3QueryStringSigner;->addSessionCredentials(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/auth/AWSSessionCredentials;)V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3QueryStringSigner;->expiration:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sget-object v2, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3QueryStringSigner;->TIME_TO_SECONDS:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3QueryStringSigner;->httpVerb:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3QueryStringSigner;->resourcePath:Ljava/lang/String;

    invoke-static {v1, v2, p1, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/RestUtils;->makeS3CanonicalString(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/com/amazonaws/Request;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-interface {p2}, Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;->getAWSSecretKey()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/com/amazonaws/auth/SigningAlgorithm;->HmacSHA1:Lcom/amazon/kindle/com/amazonaws/auth/SigningAlgorithm;

    .line 83
    invoke-super {p0, v1, v2, v3}, Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner;->signAndBase64Encode(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/com/amazonaws/auth/SigningAlgorithm;)Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-interface {p2}, Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;->getAWSAccessKeyId()Ljava/lang/String;

    move-result-object p2

    const-string v2, "AWSAccessKeyId"

    invoke-interface {p1, v2, p2}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Expires"

    .line 87
    invoke-interface {p1, p2, v0}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Signature"

    .line 88
    invoke-interface {p1, p2, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
