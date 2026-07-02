.class Lcom/amazon/kcp/translation/service/SpeakRequest$2;
.super Lcom/amazon/kindle/krx/download/AbstractHttpResponseHandler;
.source "SpeakRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/translation/service/SpeakRequest;->getResponseHandler()Lcom/amazon/kindle/krx/download/IKRXResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private response:Lcom/amazon/kcp/translation/service/SpeakResponse;

.field final synthetic this$0:Lcom/amazon/kcp/translation/service/SpeakRequest;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/translation/service/SpeakRequest;)V
    .locals 2

    .line 112
    iput-object p1, p0, Lcom/amazon/kcp/translation/service/SpeakRequest$2;->this$0:Lcom/amazon/kcp/translation/service/SpeakRequest;

    invoke-direct {p0}, Lcom/amazon/kindle/krx/download/AbstractHttpResponseHandler;-><init>()V

    .line 113
    new-instance p1, Lcom/amazon/kcp/translation/service/SpeakResponse;

    iget-object v0, p0, Lcom/amazon/kcp/translation/service/SpeakRequest$2;->this$0:Lcom/amazon/kcp/translation/service/SpeakRequest;

    iget-object v0, v0, Lcom/amazon/kcp/translation/service/AbstractHttpRequest;->m_context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/amazon/kcp/translation/service/SpeakResponse;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kcp/translation/service/SpeakRequest$2;->response:Lcom/amazon/kcp/translation/service/SpeakResponse;

    return-void
.end method


# virtual methods
.method public onDownloadComplete(ILcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V
    .locals 0

    .line 117
    iget-object p1, p0, Lcom/amazon/kcp/translation/service/SpeakRequest$2;->this$0:Lcom/amazon/kcp/translation/service/SpeakRequest;

    invoke-static {p1}, Lcom/amazon/kcp/translation/service/SpeakRequest;->access$600(Lcom/amazon/kcp/translation/service/SpeakRequest;)Lcom/amazon/kcp/translation/service/RequestOnCompleteListener;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kcp/translation/service/SpeakRequest$2;->response:Lcom/amazon/kcp/translation/service/SpeakResponse;

    invoke-interface {p1, p2}, Lcom/amazon/kcp/translation/service/RequestOnCompleteListener;->onComplete(Ljava/lang/Object;)V

    return-void
.end method

.method public onInputStream(Ljava/io/InputStream;)V
    .locals 2

    .line 123
    :try_start_0
    invoke-static {p1}, Lcom/amazon/kindle/krx/download/IOUtils;->readInputAsString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    .line 124
    new-instance v0, Lcom/amazon/kcp/translation/service/SpeakResponse;

    iget-object v1, p0, Lcom/amazon/kcp/translation/service/SpeakRequest$2;->this$0:Lcom/amazon/kcp/translation/service/SpeakRequest;

    iget-object v1, v1, Lcom/amazon/kcp/translation/service/AbstractHttpRequest;->m_context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/amazon/kcp/translation/service/SpeakResponse;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/translation/service/SpeakRequest$2;->response:Lcom/amazon/kcp/translation/service/SpeakResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 128
    invoke-static {}, Lcom/amazon/kcp/translation/service/SpeakRequest;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "failed to read input stream"

    invoke-static {v0, v1, p1}, Lcom/amazon/kcp/translation/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
