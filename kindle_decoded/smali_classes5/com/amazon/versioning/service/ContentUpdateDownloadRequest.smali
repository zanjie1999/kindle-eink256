.class public abstract Lcom/amazon/versioning/service/ContentUpdateDownloadRequest;
.super Lcom/amazon/kindle/krx/download/BaseKRXDownloadRequest;
.source "ContentUpdateDownloadRequest.java"

# interfaces
.implements Lcom/amazon/kindle/krx/download/IHttpResponseInputStreamHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/kindle/krx/download/BaseKRXDownloadRequest;",
        "Lcom/amazon/kindle/krx/download/IHttpResponseInputStreamHandler;"
    }
.end annotation


# static fields
.field private static final CLASS_TAG:Ljava/lang/String;

.field private static final KCU_TIMEOUT:I = 0x3a98

.field private static final REST_API_VERSION_KEY:Ljava/lang/String; = "apiversion"

.field private static final REST_PREFERRED_MARKETPLACE_KEY:Ljava/lang/String; = "preferredmarketplace"


# instance fields
.field private exception:Ljava/lang/Exception;

.field private final kcupsResponseReceivedListenerWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amazon/versioning/interfaces/KCUPSResponseReceivedListener<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private responseCode:I

.field private returnObjectFromService:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/amazon/versioning/service/ContentUpdateDownloadRequest;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/versioning/service/ContentUpdateDownloadRequest;->CLASS_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/versioning/interfaces/KCUPSResponseReceivedListener;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/amazon/kindle/krx/download/BaseKRXDownloadRequest;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amazon/versioning/service/ContentUpdateDownloadRequest;->kcupsResponseReceivedListenerWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected abstract getAPIPath()Ljava/lang/String;
.end method

.method protected abstract getAPIVersion()Ljava/lang/String;
.end method

.method protected abstract getAdditionalHeaders()Ljava/util/Map;
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

.method public getAuthType()Lcom/amazon/kindle/krx/download/IKRXDownloadManager$AuthenticationType;
    .locals 1

    .line 58
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

.method public getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;
    .locals 1

    .line 63
    invoke-super {p0}, Lcom/amazon/kindle/krx/download/BaseKRXDownloadRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
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

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 97
    invoke-virtual {p0}, Lcom/amazon/versioning/service/ContentUpdateDownloadRequest;->getAPIVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "apiversion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-virtual {p0}, Lcom/amazon/versioning/service/ContentUpdateDownloadRequest;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "preferredmarketplace"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-virtual {p0}, Lcom/amazon/versioning/service/ContentUpdateDownloadRequest;->getAdditionalHeaders()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 100
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 101
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object v0
.end method

.method protected abstract getPreferredMarketplace()Ljava/lang/String;
.end method

.method public getResponseCode()I
    .locals 1

    .line 166
    iget v0, p0, Lcom/amazon/versioning/service/ContentUpdateDownloadRequest;->responseCode:I

    return v0
.end method

.method public getResponseHeaderNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    const/16 v0, 0x3a98

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 3

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://kindle-content-update-proxy.amazon.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/versioning/service/ContentUpdateDownloadRequest;->getAPIPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amazon/versioning/service/ContentUpdateDownloadRequest;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "this is url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object v0
.end method

.method protected handleCompletion(I)V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/amazon/versioning/service/ContentUpdateDownloadRequest;->kcupsResponseReceivedListenerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/amazon/versioning/service/ContentUpdateDownloadRequest;->kcupsResponseReceivedListenerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/versioning/interfaces/KCUPSResponseReceivedListener;

    .line 148
    iget-object v1, p0, Lcom/amazon/versioning/service/ContentUpdateDownloadRequest;->exception:Ljava/lang/Exception;

    if-eqz v1, :cond_0

    .line 149
    invoke-interface {v0, v1}, Lcom/amazon/versioning/interfaces/KCUPSResponseReceivedListener;->onException(Ljava/lang/Exception;)V

    return-void

    .line 152
    :cond_0
    invoke-static {p1}, Lcom/amazon/versioning/data/enums/KCUPSResponseCode;->getResponseCodeFromNumber(I)Lcom/amazon/versioning/data/enums/KCUPSResponseCode;

    move-result-object p1

    .line 153
    sget-object v1, Lcom/amazon/versioning/data/enums/KCUPSResponseCode;->OK:Lcom/amazon/versioning/data/enums/KCUPSResponseCode;

    if-ne p1, v1, :cond_1

    .line 154
    iget-object p1, p0, Lcom/amazon/versioning/service/ContentUpdateDownloadRequest;->returnObjectFromService:Ljava/lang/Object;

    invoke-interface {v0, p1}, Lcom/amazon/versioning/interfaces/KCUPSResponseReceivedListener;->onResponse(Ljava/lang/Object;)V

    goto :goto_0

    .line 156
    :cond_1
    invoke-interface {v0, p1}, Lcom/amazon/versioning/interfaces/KCUPSResponseReceivedListener;->onErrorCode(Lcom/amazon/versioning/data/enums/KCUPSResponseCode;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public isCancelled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDownloadComplete(ILcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/amazon/versioning/service/ContentUpdateDownloadRequest;->kcupsResponseReceivedListenerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 114
    sget-object v0, Lcom/amazon/versioning/service/ContentUpdateDownloadRequest$1;->$SwitchMap$com$amazon$kindle$krx$download$IKRXResponseHandler$DownloadStatus:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 p1, 0x2

    if-eq p2, p1, :cond_3

    const/4 p1, 0x3

    if-eq p2, p1, :cond_2

    const/4 p1, 0x4

    if-eq p2, p1, :cond_1

    const/4 p1, 0x5

    if-eq p2, p1, :cond_0

    .line 136
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/amazon/versioning/service/ContentUpdateDownloadRequest;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Hit default"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0

    .line 131
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/amazon/versioning/service/ContentUpdateDownloadRequest;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Hit unknown"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    iget-object p1, p0, Lcom/amazon/versioning/service/ContentUpdateDownloadRequest;->kcupsResponseReceivedListenerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/versioning/interfaces/KCUPSResponseReceivedListener;

    iget p2, p0, Lcom/amazon/versioning/service/ContentUpdateDownloadRequest;->responseCode:I

    .line 133
    invoke-static {p2}, Lcom/amazon/versioning/data/enums/KCUPSResponseCode;->getResponseCodeFromNumber(I)Lcom/amazon/versioning/data/enums/KCUPSResponseCode;

    move-result-object p2

    .line 132
    invoke-interface {p1, p2}, Lcom/amazon/versioning/interfaces/KCUPSResponseReceivedListener;->onErrorCode(Lcom/amazon/versioning/data/enums/KCUPSResponseCode;)V

    goto :goto_0

    .line 128
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/amazon/versioning/service/ContentUpdateDownloadRequest;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Hit queued"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 123
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/amazon/versioning/service/ContentUpdateDownloadRequest;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Hit failed"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    iget-object p1, p0, Lcom/amazon/versioning/service/ContentUpdateDownloadRequest;->kcupsResponseReceivedListenerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/versioning/interfaces/KCUPSResponseReceivedListener;

    iget p2, p0, Lcom/amazon/versioning/service/ContentUpdateDownloadRequest;->responseCode:I

    .line 125
    invoke-static {p2}, Lcom/amazon/versioning/data/enums/KCUPSResponseCode;->getResponseCodeFromNumber(I)Lcom/amazon/versioning/data/enums/KCUPSResponseCode;

    move-result-object p2

    .line 124
    invoke-interface {p1, p2}, Lcom/amazon/versioning/interfaces/KCUPSResponseReceivedListener;->onErrorCode(Lcom/amazon/versioning/data/enums/KCUPSResponseCode;)V

    goto :goto_0

    .line 120
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/amazon/versioning/service/ContentUpdateDownloadRequest;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Hit downloading"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 116
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/amazon/versioning/service/ContentUpdateDownloadRequest;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Hit completed"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    invoke-virtual {p0, p1}, Lcom/amazon/versioning/service/ContentUpdateDownloadRequest;->handleCompletion(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onResponseHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/versioning/service/ContentUpdateDownloadRequest;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", value: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public onStatusCode(I)V
    .locals 0

    .line 108
    iput p1, p0, Lcom/amazon/versioning/service/ContentUpdateDownloadRequest;->responseCode:I

    return-void
.end method

.method protected recordMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 196
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getUpdatePluginMetricsManager()Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;

    move-result-object v0

    .line 197
    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;->recordReadingStreamsMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected reportPMET(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 191
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getUpdatePluginMetricsManager()Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;

    move-result-object v0

    .line 192
    invoke-virtual {v0, p1, p2}, Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;->reportMetrics(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected reportPMETandMetadata(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 186
    invoke-virtual {p0, p1, p2}, Lcom/amazon/versioning/service/ContentUpdateDownloadRequest;->reportPMET(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Status"

    .line 187
    invoke-virtual {p0, p1, v0, p2}, Lcom/amazon/versioning/service/ContentUpdateDownloadRequest;->recordMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setException(Ljava/lang/Exception;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/amazon/versioning/service/ContentUpdateDownloadRequest;->exception:Ljava/lang/Exception;

    return-void
.end method

.method public setReturnObjectFromService(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 182
    iput-object p1, p0, Lcom/amazon/versioning/service/ContentUpdateDownloadRequest;->returnObjectFromService:Ljava/lang/Object;

    return-void
.end method
