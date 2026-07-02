.class Lcom/amazon/kcp/translation/service/TranslationRequest$2;
.super Lcom/amazon/kindle/krx/download/AbstractHttpResponseHandler;
.source "TranslationRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/translation/service/TranslationRequest;->getResponseHandler()Lcom/amazon/kindle/krx/download/IKRXResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private response:Lcom/amazon/kcp/translation/service/TranslationResponse;

.field final synthetic this$0:Lcom/amazon/kcp/translation/service/TranslationRequest;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/translation/service/TranslationRequest;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/amazon/kcp/translation/service/TranslationRequest$2;->this$0:Lcom/amazon/kcp/translation/service/TranslationRequest;

    invoke-direct {p0}, Lcom/amazon/kindle/krx/download/AbstractHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadComplete(ILcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V
    .locals 0

    .line 147
    iget-object p1, p0, Lcom/amazon/kcp/translation/service/TranslationRequest$2;->this$0:Lcom/amazon/kcp/translation/service/TranslationRequest;

    invoke-static {p1}, Lcom/amazon/kcp/translation/service/TranslationRequest;->access$900(Lcom/amazon/kcp/translation/service/TranslationRequest;)Lcom/amazon/kcp/translation/service/RequestOnCompleteListener;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kcp/translation/service/TranslationRequest$2;->response:Lcom/amazon/kcp/translation/service/TranslationResponse;

    invoke-interface {p1, p2}, Lcom/amazon/kcp/translation/service/RequestOnCompleteListener;->onComplete(Ljava/lang/Object;)V

    return-void
.end method

.method public onInputStream(Ljava/io/InputStream;)V
    .locals 2

    .line 153
    :try_start_0
    invoke-static {p1}, Lcom/amazon/kindle/krx/download/IOUtils;->readInputAsString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    .line 154
    new-instance v0, Lcom/amazon/kcp/translation/service/TranslationResponse;

    iget-object v1, p0, Lcom/amazon/kcp/translation/service/TranslationRequest$2;->this$0:Lcom/amazon/kcp/translation/service/TranslationRequest;

    iget-object v1, v1, Lcom/amazon/kcp/translation/service/AbstractHttpRequest;->m_context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/amazon/kcp/translation/service/TranslationResponse;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/translation/service/TranslationRequest$2;->response:Lcom/amazon/kcp/translation/service/TranslationResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 158
    invoke-static {}, Lcom/amazon/kcp/translation/service/TranslationRequest;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "failed to read input stream"

    invoke-static {v0, v1, p1}, Lcom/amazon/kcp/translation/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
