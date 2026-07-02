.class public Lcom/amazon/falkor/download/FalkorDownloadRequest;
.super Lcom/amazon/kindle/krx/download/BaseKRXDownloadRequest;
.source "FalkorDownloadManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFalkorDownloadManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FalkorDownloadManager.kt\ncom/amazon/falkor/download/FalkorDownloadRequest\n*L\n1#1,222:1\n*E\n"
.end annotation


# instance fields
.field private final action:Ljava/lang/String;

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

.field private final responseHandler:Lcom/amazon/kindle/krx/download/IHttpResponseInputStreamHandler;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/download/IHttpResponseInputStreamHandler;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            "Lcom/amazon/kindle/krx/download/IHttpResponseInputStreamHandler;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sdk"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "responseHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    invoke-direct {p0}, Lcom/amazon/kindle/krx/download/BaseKRXDownloadRequest;-><init>()V

    iput-object p1, p0, Lcom/amazon/falkor/download/FalkorDownloadRequest;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/falkor/download/FalkorDownloadRequest;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object p3, p0, Lcom/amazon/falkor/download/FalkorDownloadRequest;->responseHandler:Lcom/amazon/kindle/krx/download/IHttpResponseInputStreamHandler;

    iput-object p4, p0, Lcom/amazon/falkor/download/FalkorDownloadRequest;->headers:Ljava/util/Map;

    iput-object p5, p0, Lcom/amazon/falkor/download/FalkorDownloadRequest;->action:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/amazon/falkor/download/FalkorDownloadRequest;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthType()Lcom/amazon/kindle/krx/download/IKRXDownloadManager$AuthenticationType;
    .locals 1

    .line 205
    sget-object v0, Lcom/amazon/kindle/krx/download/IKRXDownloadManager$AuthenticationType;->ADP:Lcom/amazon/kindle/krx/download/IKRXDownloadManager$AuthenticationType;

    return-object v0
.end method

.method public getBody()[B
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public getBookId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getFilePath()Ljava/lang/String;
    .locals 1

    .line 193
    invoke-virtual {p0}, Lcom/amazon/falkor/download/FalkorDownloadRequest;->getFilePath()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/amazon/falkor/download/FalkorDownloadRequest;->headers:Ljava/util/Map;

    .line 201
    sget-object v1, Lcom/amazon/falkor/utils/FalkorUrlUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorUrlUtils;

    iget-object v2, p0, Lcom/amazon/falkor/download/FalkorDownloadRequest;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-virtual {v1, v2}, Lcom/amazon/falkor/utils/FalkorUrlUtils;->getCookieString(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cookie"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getResponseHandler()Lcom/amazon/kindle/krx/download/IHttpResponseInputStreamHandler;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/amazon/falkor/download/FalkorDownloadRequest;->responseHandler:Lcom/amazon/kindle/krx/download/IHttpResponseInputStreamHandler;

    return-object v0
.end method

.method public bridge synthetic getResponseHandler()Lcom/amazon/kindle/krx/download/IKRXResponseHandler;
    .locals 1

    .line 193
    invoke-virtual {p0}, Lcom/amazon/falkor/download/FalkorDownloadRequest;->getResponseHandler()Lcom/amazon/kindle/krx/download/IHttpResponseInputStreamHandler;

    move-result-object v0

    return-object v0
.end method

.method public getRetries()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/amazon/falkor/download/FalkorDownloadRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
