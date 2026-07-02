.class Lcom/amazon/kcp/application/AppConfigRequest$1;
.super Lcom/amazon/kindle/webservices/BaseResponseHandler;
.source "AppConfigRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/application/AppConfigRequest;->createResponseHandler()Lcom/amazon/kindle/webservices/IResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/AppConfigRequest;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/AppConfigRequest;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/amazon/kcp/application/AppConfigRequest$1;->this$0:Lcom/amazon/kcp/application/AppConfigRequest;

    invoke-direct {p0}, Lcom/amazon/kindle/webservices/BaseResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputStream(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/webservices/ResponseHandlerException;
        }
    .end annotation

    const-string v0, "Error on reading app config response"

    .line 183
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 184
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 188
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 189
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 202
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 204
    invoke-static {}, Lcom/amazon/kcp/application/AppConfigRequest;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error on parsing app config response"

    invoke-static {v1, v2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    if-eqz v0, :cond_1

    .line 208
    iget-object p1, p0, Lcom/amazon/kcp/application/AppConfigRequest$1;->this$0:Lcom/amazon/kcp/application/AppConfigRequest;

    invoke-static {p1, v0}, Lcom/amazon/kcp/application/AppConfigRequest;->access$100(Lcom/amazon/kcp/application/AppConfigRequest;Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    .line 209
    invoke-static {p1}, Lcom/amazon/kcp/application/AppConfigRequest;->access$202(Z)Z

    :cond_1
    return-void

    :catch_1
    move-exception p1

    .line 195
    invoke-static {}, Lcom/amazon/kcp/application/AppConfigRequest;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_2
    move-exception p1

    .line 192
    invoke-static {}, Lcom/amazon/kcp/application/AppConfigRequest;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
