.class public Lcom/amazon/kindle/s2k/webservice/GetUploadUrlResponseModel;
.super Lcom/amazon/kcp/application/models/internal/CAsyncModel;
.source "GetUploadUrlResponseModel.java"


# instance fields
.field private expiryTime:J

.field private receivedResults:Z

.field private statusCode:I

.field private stkToken:Ljava/lang/String;

.field private uploadUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/amazon/kcp/application/models/internal/CAsyncModel;-><init>()V

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlResponseModel;->statusCode:I

    return-void
.end method


# virtual methods
.method public getExpiryTime()J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlResponseModel;->expiryTime:J

    return-wide v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlResponseModel;->statusCode:I

    return v0
.end method

.method public getStkToken()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlResponseModel;->stkToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadUrl()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlResponseModel;->uploadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setExpiryTime(J)V
    .locals 0

    .line 59
    iput-wide p1, p0, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlResponseModel;->expiryTime:J

    return-void
.end method

.method public setHasResults(Z)V
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlResponseModel;->receivedResults:Z

    return-void
.end method

.method public setStatusCode(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlResponseModel;->statusCode:I

    return-void
.end method

.method public setStkToken(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlResponseModel;->stkToken:Ljava/lang/String;

    return-void
.end method

.method public setUploadUrl(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlResponseModel;->uploadUrl:Ljava/lang/String;

    return-void
.end method
