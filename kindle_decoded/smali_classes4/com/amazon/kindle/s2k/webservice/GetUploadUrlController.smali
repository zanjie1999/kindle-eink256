.class public Lcom/amazon/kindle/s2k/webservice/GetUploadUrlController;
.super Lcom/amazon/foundation/internal/DefaultContentHandler;
.source "GetUploadUrlController.java"


# static fields
.field private static final EXPIRY_TIME_NODE:Ljava/lang/String; = "expiryTime"

.field private static final RESPONSE_NODE:Ljava/lang/String; = "GetUploadUrlResponse"

.field private static final STATUS_CODE_NODE:Ljava/lang/String; = "statusCode"

.field private static final STK_TOKEN_NODE:Ljava/lang/String; = "stkToken"

.field private static final TAG:Ljava/lang/String;

.field private static final UPLOAD_URL_NODE:Ljava/lang/String; = "uploadUrl"


# instance fields
.field private responseModel:Lcom/amazon/kindle/s2k/webservice/GetUploadUrlResponseModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlController;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/s2k/webservice/GetUploadUrlResponseModel;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/amazon/foundation/internal/DefaultContentHandler;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlController;->responseModel:Lcom/amazon/kindle/s2k/webservice/GetUploadUrlResponseModel;

    return-void
.end method


# virtual methods
.method public onElementEnd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 53
    sget-object v0, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onElementEnd - received tagName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " content : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v0, v3, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    :try_start_0
    const-string v0, "GetUploadUrlResponse"

    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlController;->responseModel:Lcom/amazon/kindle/s2k/webservice/GetUploadUrlResponseModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlResponseModel;->setHasResults(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "statusCode"

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlController;->responseModel:Lcom/amazon/kindle/s2k/webservice/GetUploadUrlResponseModel;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlResponseModel;->setStatusCode(I)V

    goto :goto_0

    :cond_1
    const-string v0, "expiryTime"

    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlController;->responseModel:Lcom/amazon/kindle/s2k/webservice/GetUploadUrlResponseModel;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlResponseModel;->setExpiryTime(J)V

    goto :goto_0

    :cond_2
    const-string v0, "uploadUrl"

    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlController;->responseModel:Lcom/amazon/kindle/s2k/webservice/GetUploadUrlResponseModel;

    invoke-virtual {v0, p2}, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlResponseModel;->setUploadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "stkToken"

    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 73
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlController;->responseModel:Lcom/amazon/kindle/s2k/webservice/GetUploadUrlResponseModel;

    invoke-virtual {v0, p2}, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlResponseModel;->setStkToken(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    sget-object v0, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlController;->TAG:Ljava/lang/String;

    const/16 v1, 0x10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onElementEnd - Unable to parse node tagName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onElementStart(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    .line 47
    sget-object p2, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onElementStart - received tagName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p2, v0, p1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
