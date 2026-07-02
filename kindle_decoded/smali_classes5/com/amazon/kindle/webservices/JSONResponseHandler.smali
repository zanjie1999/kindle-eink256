.class public Lcom/amazon/kindle/webservices/JSONResponseHandler;
.super Lcom/amazon/kindle/webservices/BaseResponseHandler;
.source "JSONResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/webservices/JSONResponseHandler$JSONResponseArrayHandler;,
        Lcom/amazon/kindle/webservices/JSONResponseHandler$JSONResponseObjectHandler;
    }
.end annotation


# static fields
.field private static final HTTP_STATUS_CODE:Ljava/lang/String; = "httpStatusCode"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field arrayHandler:Lcom/amazon/kindle/webservices/JSONResponseHandler$JSONResponseArrayHandler;

.field objectHandler:Lcom/amazon/kindle/webservices/JSONResponseHandler$JSONResponseObjectHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/amazon/kindle/webservices/JSONResponseHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/webservices/JSONResponseHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/webservices/JSONResponseHandler$JSONResponseObjectHandler;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/amazon/kindle/webservices/BaseResponseHandler;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amazon/kindle/webservices/JSONResponseHandler;->objectHandler:Lcom/amazon/kindle/webservices/JSONResponseHandler$JSONResponseObjectHandler;

    return-void
.end method


# virtual methods
.method public onInputStream(Ljava/io/InputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/webservices/ResponseHandlerException;
        }
    .end annotation

    const-string v0, "Couldn\'t close input stream"

    const/4 v1, 0x0

    .line 40
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, p1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_0

    .line 44
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 48
    :cond_0
    new-instance v3, Lorg/json/JSONTokener;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 61
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_0
    move-exception v2

    .line 64
    sget-object v3, Lcom/amazon/kindle/webservices/JSONResponseHandler;->TAG:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    :catch_3
    move-exception p1

    goto :goto_3

    :catch_4
    move-exception p1

    goto :goto_4

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :catch_5
    move-exception p1

    move-object v2, v1

    .line 57
    :goto_1
    :try_start_3
    sget-object v3, Lcom/amazon/kindle/webservices/JSONResponseHandler;->TAG:Ljava/lang/String;

    const-string v4, "http connection is closed"

    invoke-static {v3, v4, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_1

    .line 61
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    goto :goto_5

    :catch_6
    move-exception p1

    move-object v2, v1

    .line 55
    :goto_2
    :try_start_5
    sget-object v3, Lcom/amazon/kindle/webservices/JSONResponseHandler;->TAG:Ljava/lang/String;

    const-string v4, "Couldn\'t receive response from server"

    invoke-static {v3, v4, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_1

    .line 61
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9

    goto :goto_5

    :catch_7
    move-exception p1

    move-object v2, v1

    .line 53
    :goto_3
    :try_start_7
    sget-object v3, Lcom/amazon/kindle/webservices/JSONResponseHandler;->TAG:Ljava/lang/String;

    const-string v4, "Java doesn\'t support UTF-8 apparently."

    invoke-static {v3, v4, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v2, :cond_1

    .line 61
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9

    goto :goto_5

    :catch_8
    move-exception p1

    move-object v2, v1

    .line 51
    :goto_4
    :try_start_9
    sget-object v3, Lcom/amazon/kindle/webservices/JSONResponseHandler;->TAG:Ljava/lang/String;

    const-string v4, "Failed to parse json from response"

    invoke-static {v3, v4, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v2, :cond_1

    .line 61
    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_5

    :catch_9
    move-exception p1

    .line 64
    sget-object v2, Lcom/amazon/kindle/webservices/JSONResponseHandler;->TAG:Ljava/lang/String;

    invoke-static {v2, v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_5
    move-object p1, v1

    .line 68
    :goto_6
    iget-object v0, p0, Lcom/amazon/kindle/webservices/JSONResponseHandler;->arrayHandler:Lcom/amazon/kindle/webservices/JSONResponseHandler$JSONResponseArrayHandler;

    if-eqz v0, :cond_3

    .line 69
    instance-of v0, p1, Lorg/json/JSONArray;

    if-eqz v0, :cond_2

    move-object v1, p1

    check-cast v1, Lorg/json/JSONArray;

    .line 70
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/webservices/JSONResponseHandler;->arrayHandler:Lcom/amazon/kindle/webservices/JSONResponseHandler$JSONResponseArrayHandler;

    invoke-interface {p1, v1}, Lcom/amazon/kindle/webservices/JSONResponseHandler$JSONResponseArrayHandler;->handleJSONArray(Lorg/json/JSONArray;)V

    goto :goto_7

    .line 71
    :cond_3
    iget-object v0, p0, Lcom/amazon/kindle/webservices/JSONResponseHandler;->objectHandler:Lcom/amazon/kindle/webservices/JSONResponseHandler$JSONResponseObjectHandler;

    if-eqz v0, :cond_5

    .line 72
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_4

    move-object v1, p1

    check-cast v1, Lorg/json/JSONObject;

    .line 73
    :cond_4
    iget-object p1, p0, Lcom/amazon/kindle/webservices/JSONResponseHandler;->objectHandler:Lcom/amazon/kindle/webservices/JSONResponseHandler$JSONResponseObjectHandler;

    invoke-interface {p1, v1}, Lcom/amazon/kindle/webservices/JSONResponseHandler$JSONResponseObjectHandler;->handleJSONObject(Lorg/json/JSONObject;)V

    :cond_5
    :goto_7
    return-void

    :catchall_1
    move-exception p1

    move-object v1, v2

    :goto_8
    if-eqz v1, :cond_6

    .line 61
    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_9

    :catch_a
    move-exception v1

    .line 64
    sget-object v2, Lcom/amazon/kindle/webservices/JSONResponseHandler;->TAG:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    :cond_6
    :goto_9
    throw p1
.end method
