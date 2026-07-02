.class public Lcom/amazon/kindle/krx/download/KrxDownloadRequest;
.super Lcom/amazon/kindle/webservices/BaseWebRequest;
.source "KrxDownloadRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/download/KrxDownloadRequest$InputStreamHandler;,
        Lcom/amazon/kindle/krx/download/KrxDownloadRequest$DownloadResponseHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private action:Ljava/lang/String;

.field private body:[B

.field private final bookId:Ljava/lang/String;

.field private filepath:Ljava/lang/String;

.field private handler:Lcom/amazon/kindle/krx/download/IKRXResponseHandler;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private request:Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;

.field private responseHandler:Lcom/amazon/kindle/webservices/IResponseHandler;

.field private final timeout:I

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/amazon/kindle/krx/download/KrxDownloadRequest;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/krx/download/KrxDownloadRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kindle/network/INetworkService;Lcom/amazon/kindle/krx/download/IExtendedKRXDownloadRequest;)V
    .locals 12

    .line 52
    invoke-interface {p3}, Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3}, Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;->getFilePath()Ljava/lang/String;

    move-result-object v4

    .line 53
    invoke-interface {p3}, Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p3}, Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;->getBody()[B

    move-result-object v6

    .line 54
    invoke-interface {p3}, Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;->getHeaders()Ljava/util/Map;

    move-result-object v7

    invoke-interface {p3}, Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;->getResponseHandler()Lcom/amazon/kindle/krx/download/IKRXResponseHandler;

    move-result-object v8

    invoke-interface {p3}, Lcom/amazon/kindle/krx/download/IExtendedKRXDownloadRequest;->getTimeout()I

    move-result v9

    .line 55
    invoke-interface {p3}, Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;->getBookId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p3}, Lcom/amazon/kindle/krx/download/IExtendedKRXDownloadRequest;->getRetries()I

    move-result v11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 51
    invoke-direct/range {v0 .. v11}, Lcom/amazon/kindle/krx/download/KrxDownloadRequest;-><init>(Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kindle/network/INetworkService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/util/Map;Lcom/amazon/kindle/krx/download/IKRXResponseHandler;ILjava/lang/String;I)V

    .line 57
    iput-object p3, p0, Lcom/amazon/kindle/krx/download/KrxDownloadRequest;->request:Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kindle/network/INetworkService;Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;)V
    .locals 11

    .line 63
    invoke-interface {p3}, Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3}, Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;->getFilePath()Ljava/lang/String;

    move-result-object v4

    .line 64
    invoke-interface {p3}, Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p3}, Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;->getBody()[B

    move-result-object v6

    .line 65
    invoke-interface {p3}, Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;->getHeaders()Ljava/util/Map;

    move-result-object v7

    invoke-interface {p3}, Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;->getResponseHandler()Lcom/amazon/kindle/krx/download/IKRXResponseHandler;

    move-result-object v8

    .line 66
    invoke-interface {p3}, Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;->getBookId()Ljava/lang/String;

    move-result-object v10

    const/16 v9, 0x3a98

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 62
    invoke-direct/range {v0 .. v10}, Lcom/amazon/kindle/krx/download/KrxDownloadRequest;-><init>(Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kindle/network/INetworkService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/util/Map;Lcom/amazon/kindle/krx/download/IKRXResponseHandler;ILjava/lang/String;)V

    .line 68
    iput-object p3, p0, Lcom/amazon/kindle/krx/download/KrxDownloadRequest;->request:Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kindle/network/INetworkService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/util/Map;Lcom/amazon/kindle/krx/download/IKRXResponseHandler;ILjava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/io/IFileConnectionFactory;",
            "Lcom/amazon/kindle/network/INetworkService;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/kindle/krx/download/IKRXResponseHandler;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v11, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    .line 75
    invoke-direct/range {v0 .. v11}, Lcom/amazon/kindle/krx/download/KrxDownloadRequest;-><init>(Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kindle/network/INetworkService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/util/Map;Lcom/amazon/kindle/krx/download/IKRXResponseHandler;ILjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kindle/network/INetworkService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/util/Map;Lcom/amazon/kindle/krx/download/IKRXResponseHandler;ILjava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/io/IFileConnectionFactory;",
            "Lcom/amazon/kindle/network/INetworkService;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/kindle/krx/download/IKRXResponseHandler;",
            "I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/amazon/kindle/krx/download/KrxDownloadRequest;->action:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/amazon/kindle/krx/download/KrxDownloadRequest;->headers:Ljava/util/Map;

    .line 40
    iput-object v0, p0, Lcom/amazon/kindle/krx/download/KrxDownloadRequest;->body:[B

    .line 43
    iput-object v0, p0, Lcom/amazon/kindle/krx/download/KrxDownloadRequest;->responseHandler:Lcom/amazon/kindle/webservices/IResponseHandler;

    .line 85
    iput-object p5, p0, Lcom/amazon/kindle/krx/download/KrxDownloadRequest;->action:Ljava/lang/String;

    .line 86
    iput-object p7, p0, Lcom/amazon/kindle/krx/download/KrxDownloadRequest;->headers:Ljava/util/Map;

    if-nez p7, :cond_0

    .line 88
    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    iput-object p5, p0, Lcom/amazon/kindle/krx/download/KrxDownloadRequest;->headers:Ljava/util/Map;

    .line 90
    :cond_0
    iput-object p6, p0, Lcom/amazon/kindle/krx/download/KrxDownloadRequest;->body:[B

    .line 91
    iput-object p3, p0, Lcom/amazon/kindle/krx/download/KrxDownloadRequest;->url:Ljava/lang/String;

    .line 92
    iput-object p4, p0, Lcom/amazon/kindle/krx/download/KrxDownloadRequest;->filepath:Ljava/lang/String;

    .line 93
    iput-object p8, p0, Lcom/amazon/kindle/krx/download/KrxDownloadRequest;->handler:Lcom/amazon/kindle/krx/download/IKRXResponseHandler;

    .line 94
    instance-of p3, p8, Lcom/amazon/kindle/krx/download/IHttpResponseInputStreamHandler;

    if-eqz p3, :cond_1

    .line 95
    new-instance p1, Lcom/amazon/kindle/krx/download/KrxDownloadRequest$InputStreamHandler;

    check-cast p8, Lcom/amazon/kindle/krx/download/IHttpResponseInputStreamHandler;

    invoke-direct {p1, p8, v0}, Lcom/amazon/kindle/krx/download/KrxDownloadRequest$InputStreamHandler;-><init>(Lcom/amazon/kindle/krx/download/IHttpResponseInputStreamHandler;Lcom/amazon/kindle/krx/download/KrxDownloadRequest$1;)V

    iput-object p1, p0, Lcom/amazon/kindle/krx/download/KrxDownloadRequest;->responseHandler:Lcom/amazon/kindle/webservices/IResponseHandler;

    goto :goto_0

    .line 98
    :cond_1
    new-instance p3, Lcom/amazon/kindle/krx/download/KrxDownloadRequest$DownloadResponseHandler;

    invoke-direct {p3, p1, p2, p4, p8}, Lcom/amazon/kindle/krx/download/KrxDownloadRequest$DownloadResponseHandler;-><init>(Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kindle/network/INetworkService;Ljava/lang/String;Lcom/amazon/kindle/krx/download/IKRXResponseHandler;)V

    iput-object p3, p0, Lcom/amazon/kindle/krx/download/KrxDownloadRequest;->responseHandler:Lcom/amazon/kindle/webservices/IResponseHandler;

    .line 101
    :goto_0
    iput p9, p0, Lcom/amazon/kindle/krx/download/KrxDownloadRequest;->timeout:I

    .line 102
    iput-object p10, p0, Lcom/amazon/kindle/krx/download/KrxDownloadRequest;->bookId:Ljava/lang/String;

    .line 103
    invoke-virtual {p0, p11}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setRetries(I)Lcom/amazon/kindle/webservices/IWebRequest;

    return-void
.end method


# virtual methods
.method public getHeaders()Ljava/util/Map;
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

    .line 108
    iget-object v0, p0, Lcom/amazon/kindle/krx/download/KrxDownloadRequest;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getHttpVerb()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/amazon/kindle/krx/download/KrxDownloadRequest;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/amazon/kindle/krx/download/KrxDownloadRequest;->filepath:Ljava/lang/String;

    return-object v0
.end method

.method public getPostFormData()Ljava/lang/String;
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/amazon/kindle/krx/download/KrxDownloadRequest;->body:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/kindle/krx/download/KrxDownloadRequest;->body:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public getResponseHandler()Lcom/amazon/kindle/webservices/IResponseHandler;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/amazon/kindle/krx/download/KrxDownloadRequest;->responseHandler:Lcom/amazon/kindle/webservices/IResponseHandler;

    return-object v0
.end method

.method public getResponseHeaderNames()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/amazon/kindle/krx/download/KrxDownloadRequest;->handler:Lcom/amazon/kindle/krx/download/IKRXResponseHandler;

    instance-of v1, v0, Lcom/amazon/kindle/krx/download/IHttpResponseHandler;

    if-eqz v1, :cond_0

    .line 201
    check-cast v0, Lcom/amazon/kindle/krx/download/IHttpResponseHandler;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/download/IHttpResponseHandler;->getResponseHeaderNames()Ljava/util/Collection;

    move-result-object v0

    return-object v0

    .line 203
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/amazon/kindle/krx/download/KrxDownloadRequest;->timeout:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/amazon/kindle/krx/download/KrxDownloadRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isAuthenticationRequired()Z
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/amazon/kindle/krx/download/KrxDownloadRequest;->request:Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 160
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;->getAuthType()Lcom/amazon/kindle/krx/download/IKRXDownloadManager$AuthenticationType;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kindle/krx/download/KrxDownloadRequest;->request:Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;->getAuthType()Lcom/amazon/kindle/krx/download/IKRXDownloadManager$AuthenticationType;

    move-result-object v0

    sget-object v2, Lcom/amazon/kindle/krx/download/IKRXDownloadManager$AuthenticationType;->NONE:Lcom/amazon/kindle/krx/download/IKRXDownloadManager$AuthenticationType;

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isCancelled()Z
    .locals 2

    .line 141
    invoke-super {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->isCancelled()Z

    move-result v0

    .line 143
    iget-object v1, p0, Lcom/amazon/kindle/krx/download/KrxDownloadRequest;->request:Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;

    if-eqz v1, :cond_0

    .line 144
    invoke-interface {v1}, Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;->isCancelled()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public isNetworkAllowedToUse()Z
    .locals 1

    const/4 v0, 0x0

    .line 258
    invoke-static {v0}, Lcom/amazon/kindle/download/BookDownloadNetworkUtils;->isNetworkAllowed(Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;)Z

    move-result v0

    return v0
.end method

.method public onRequestComplete()Z
    .locals 4

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kindle/krx/download/KrxDownloadRequest;->filepath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 169
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/amazon/kindle/krx/download/KrxDownloadRequest;->filepath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 171
    :goto_0
    iget-object v1, p0, Lcom/amazon/kindle/krx/download/KrxDownloadRequest;->handler:Lcom/amazon/kindle/krx/download/IKRXResponseHandler;

    if-eqz v1, :cond_3

    .line 172
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    and-int/2addr v0, v2

    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/krx/download/KrxDownloadRequest;->handler:Lcom/amazon/kindle/krx/download/IKRXResponseHandler;

    .line 175
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/download/KrxDownloadRequest;->getResponseHandler()Lcom/amazon/kindle/webservices/IResponseHandler;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/webservices/IResponseHandler;->getHttpStatusCode()I

    move-result v2

    if-eqz v0, :cond_2

    sget-object v3, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->COMPLETED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    goto :goto_2

    :cond_2
    sget-object v3, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->FAILED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    .line 174
    :goto_2
    invoke-interface {v1, v2, v3}, Lcom/amazon/kindle/krx/download/IKRXResponseHandler;->onDownloadComplete(ILcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 179
    sget-object v2, Lcom/amazon/kindle/krx/download/KrxDownloadRequest;->TAG:Ljava/lang/String;

    const-string v3, "Error handling KrxDownloadRequest"

    invoke-static {v2, v3, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    return v0
.end method

.method public setErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V
    .locals 2

    .line 208
    invoke-super {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    .line 216
    iget-object v0, p0, Lcom/amazon/kindle/krx/download/KrxDownloadRequest;->request:Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;

    instance-of v1, v0, Lcom/amazon/kindle/krx/download/BaseKRXDownloadRequest;

    if-eqz v1, :cond_0

    .line 217
    check-cast v0, Lcom/amazon/kindle/krx/download/BaseKRXDownloadRequest;

    .line 218
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/krx/download/BaseKRXDownloadRequest;->setErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    :cond_0
    return-void
.end method

.method public setHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/amazon/kindle/krx/download/KrxDownloadRequest;->headers:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 188
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;
    .locals 0

    return-object p0
.end method
