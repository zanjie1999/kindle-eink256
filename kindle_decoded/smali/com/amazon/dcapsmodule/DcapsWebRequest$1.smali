.class Lcom/amazon/dcapsmodule/DcapsWebRequest$1;
.super Lcom/amazon/kindle/krx/download/AbstractHttpResponseHandler;
.source "DcapsWebRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/dcapsmodule/DcapsWebRequest;->getResponseHandler()Lcom/amazon/kindle/krx/download/IKRXResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/dcapsmodule/DcapsWebRequest;


# direct methods
.method constructor <init>(Lcom/amazon/dcapsmodule/DcapsWebRequest;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/amazon/dcapsmodule/DcapsWebRequest$1;->this$0:Lcom/amazon/dcapsmodule/DcapsWebRequest;

    invoke-direct {p0}, Lcom/amazon/kindle/krx/download/AbstractHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadComplete(ILcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V
    .locals 4

    .line 107
    invoke-static {}, Lcom/amazon/dcapsmodule/DcapsPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    invoke-static {}, Lcom/amazon/dcapsmodule/DcapsWebRequest;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDownloadComplete statusCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    sget-object v0, Lcom/amazon/dcapsmodule/DcapsWebRequest$2;->$SwitchMap$com$amazon$kindle$krx$download$IKRXResponseHandler$DownloadStatus:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_1

    .line 128
    :cond_0
    invoke-static {}, Lcom/amazon/dcapsmodule/DcapsPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p2

    invoke-static {}, Lcom/amazon/dcapsmodule/DcapsWebRequest;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DCAPS web request failed with status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object p2, p0, Lcom/amazon/dcapsmodule/DcapsWebRequest$1;->this$0:Lcom/amazon/dcapsmodule/DcapsWebRequest;

    iget-object p2, p2, Lcom/amazon/dcapsmodule/DcapsWebRequest;->handler:Lcom/amazon/kindle/dcaps/common/ResponseHandler;

    invoke-interface {p2, p1}, Lcom/amazon/kindle/dcaps/common/ResponseHandler;->onFailure(I)V

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 116
    :try_start_0
    invoke-static {}, Lcom/amazon/dcapsmodule/DcapsPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    invoke-static {}, Lcom/amazon/dcapsmodule/DcapsWebRequest;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download complete, trying to extract json object from :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/dcapsmodule/DcapsWebRequest$1;->this$0:Lcom/amazon/dcapsmodule/DcapsWebRequest;

    iget-object v3, v3, Lcom/amazon/dcapsmodule/DcapsWebRequest;->responseBody:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/amazon/dcapsmodule/DcapsWebRequest$1;->this$0:Lcom/amazon/dcapsmodule/DcapsWebRequest;

    iget-object v1, v1, Lcom/amazon/dcapsmodule/DcapsWebRequest;->responseBody:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 121
    invoke-static {}, Lcom/amazon/dcapsmodule/DcapsPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v1

    invoke-static {}, Lcom/amazon/dcapsmodule/DcapsWebRequest;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "failed to extract json object for dcaps request"

    invoke-interface {v1, v2, v3, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    :goto_0
    iget-object v0, p0, Lcom/amazon/dcapsmodule/DcapsWebRequest$1;->this$0:Lcom/amazon/dcapsmodule/DcapsWebRequest;

    iget-object v0, v0, Lcom/amazon/dcapsmodule/DcapsWebRequest;->handler:Lcom/amazon/kindle/dcaps/common/ResponseHandler;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/dcaps/common/ResponseHandler;->onSuccess(ILorg/json/JSONObject;)V

    :goto_1
    return-void
.end method

.method public onInputStream(Ljava/io/InputStream;)V
    .locals 3

    if-nez p1, :cond_0

    .line 138
    invoke-static {}, Lcom/amazon/dcapsmodule/DcapsPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    invoke-static {}, Lcom/amazon/dcapsmodule/DcapsWebRequest;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "response body was null for dcaps request"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 142
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amazon/dcapsmodule/DcapsWebRequest$1;->this$0:Lcom/amazon/dcapsmodule/DcapsWebRequest;

    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/dcapsmodule/DcapsWebRequest;->responseBody:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :goto_0
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 144
    :catch_0
    :try_start_1
    invoke-static {}, Lcom/amazon/dcapsmodule/DcapsPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    invoke-static {}, Lcom/amazon/dcapsmodule/DcapsWebRequest;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "error process input stream for dcaps request"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 146
    :goto_2
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v0
.end method
