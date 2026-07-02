.class public Lcom/amazon/sitb/android/DeviceAuthenticatedWebRequest;
.super Lcom/amazon/kindle/krx/download/BaseKRXDownloadRequest;
.source "DeviceAuthenticatedWebRequest.java"


# instance fields
.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final requestUrl:Ljava/lang/String;

.field private final responseHandler:Lcom/amazon/kindle/krx/download/IHttpResponseInputStreamHandler;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/krx/download/IHttpResponseInputStreamHandler;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/amazon/kindle/krx/download/BaseKRXDownloadRequest;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/sitb/android/DeviceAuthenticatedWebRequest;->headers:Ljava/util/Map;

    .line 27
    iput-object p2, p0, Lcom/amazon/sitb/android/DeviceAuthenticatedWebRequest;->responseHandler:Lcom/amazon/kindle/krx/download/IHttpResponseInputStreamHandler;

    .line 28
    iput-object p1, p0, Lcom/amazon/sitb/android/DeviceAuthenticatedWebRequest;->requestUrl:Ljava/lang/String;

    const-string p1, "Accept-Encoding"

    const-string p2, "gzip"

    .line 29
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    const-string v0, "GET"

    return-object v0
.end method

.method public getAuthType()Lcom/amazon/kindle/krx/download/IKRXDownloadManager$AuthenticationType;
    .locals 1

    .line 41
    sget-object v0, Lcom/amazon/kindle/krx/download/IKRXDownloadManager$AuthenticationType;->ADP:Lcom/amazon/kindle/krx/download/IKRXDownloadManager$AuthenticationType;

    return-object v0
.end method

.method public getBody()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBookId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

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

    .line 65
    iget-object v0, p0, Lcom/amazon/sitb/android/DeviceAuthenticatedWebRequest;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getResponseHandler()Lcom/amazon/kindle/krx/download/IKRXResponseHandler;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/amazon/sitb/android/DeviceAuthenticatedWebRequest;->responseHandler:Lcom/amazon/kindle/krx/download/IHttpResponseInputStreamHandler;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/amazon/sitb/android/DeviceAuthenticatedWebRequest;->requestUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 90
    invoke-virtual {p0}, Lcom/amazon/sitb/android/DeviceAuthenticatedWebRequest;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 91
    invoke-virtual {p0}, Lcom/amazon/sitb/android/DeviceAuthenticatedWebRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 92
    invoke-virtual {p0}, Lcom/amazon/sitb/android/DeviceAuthenticatedWebRequest;->getHeaders()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "%s %s [%s]"

    .line 89
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
