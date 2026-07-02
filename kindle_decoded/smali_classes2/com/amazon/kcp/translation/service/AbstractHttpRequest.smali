.class abstract Lcom/amazon/kcp/translation/service/AbstractHttpRequest;
.super Lcom/amazon/kindle/krx/download/BaseKRXDownloadRequest;
.source "AbstractHttpRequest.java"


# instance fields
.field private m_acxVersion:Ljava/lang/String;

.field protected m_bookID:Ljava/lang/String;

.field private m_clientId:Ljava/lang/String;

.field protected m_context:Landroid/content/Context;

.field private m_stopRequested:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/amazon/kindle/krx/download/BaseKRXDownloadRequest;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/amazon/kcp/translation/service/AbstractHttpRequest;->m_stopRequested:Z

    .line 23
    iput-object p1, p0, Lcom/amazon/kcp/translation/service/AbstractHttpRequest;->m_bookID:Ljava/lang/String;

    .line 24
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 25
    sget v0, Lcom/amazon/kindle/krl/R$string;->translation_acx_version:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/translation/service/AbstractHttpRequest;->m_acxVersion:Ljava/lang/String;

    .line 26
    sget v0, Lcom/amazon/kindle/krl/R$string;->translation_client_id:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/translation/service/AbstractHttpRequest;->m_clientId:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/amazon/kcp/translation/service/AbstractHttpRequest;->m_context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    const-string v0, "POST"

    return-object v0
.end method

.method public getAuthType()Lcom/amazon/kindle/krx/download/IKRXDownloadManager$AuthenticationType;
    .locals 1

    .line 79
    sget-object v0, Lcom/amazon/kindle/krx/download/IKRXDownloadManager$AuthenticationType;->ADP:Lcom/amazon/kindle/krx/download/IKRXDownloadManager$AuthenticationType;

    return-object v0
.end method

.method public getBody()[B
    .locals 3

    .line 70
    invoke-virtual {p0}, Lcom/amazon/kcp/translation/service/AbstractHttpRequest;->toParameterMap()Ljava/util/Map;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/amazon/kcp/translation/service/AbstractHttpRequest;->m_acxVersion:Ljava/lang/String;

    const-string/jumbo v2, "version"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v1, p0, Lcom/amazon/kcp/translation/service/AbstractHttpRequest;->m_clientId:Ljava/lang/String;

    const-string v2, "clientId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-static {v0}, Lcom/amazon/kcp/translation/service/HTTPRequestUtils;->buildHTTPPostBody(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getBookId()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/kcp/translation/service/AbstractHttpRequest;->m_bookID:Ljava/lang/String;

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

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/amazon/kcp/translation/service/AbstractHttpRequest;->m_stopRequested:Z

    return v0
.end method

.method public stopConnectRequest()V
    .locals 1

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/amazon/kcp/translation/service/AbstractHttpRequest;->m_stopRequested:Z

    return-void
.end method

.method protected abstract toParameterMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
