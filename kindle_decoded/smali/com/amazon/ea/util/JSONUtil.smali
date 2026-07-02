.class public Lcom/amazon/ea/util/JSONUtil;
.super Ljava/lang/Object;
.source "JSONUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.util.JSONUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static parseInputStreamToJsonObject(Ljava/io/InputStream;)Lorg/json/JSONObject;
    .locals 5

    const-string v0, "io exception trying to close buffered reader"

    const/4 v1, 0x0

    if-nez p0, :cond_1

    .line 33
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 34
    sget-object p0, Lcom/amazon/ea/util/JSONUtil;->TAG:Ljava/lang/String;

    const-string v0, "given input stream is null, ignoring."

    invoke-static {p0, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v1

    .line 39
    :cond_1
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 40
    sget-object v2, Lcom/amazon/ea/util/JSONUtil;->TAG:Ljava/lang/String;

    const-string v3, "attempting to parse input stream to json object"

    invoke-static {v2, v3}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_2
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, p0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 49
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 52
    :cond_3
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 63
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 65
    :catch_0
    sget-object p0, Lcom/amazon/ea/util/JSONUtil;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v3

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_1
    move-object v2, v1

    .line 58
    :catch_2
    :try_start_3
    sget-object p0, Lcom/amazon/ea/util/JSONUtil;->TAG:Ljava/lang/String;

    const-string v3, "json exception occurred while trying to parse input stream to json object"

    invoke-static {p0, v3}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_4

    goto :goto_2

    :catch_3
    move-object v2, v1

    .line 55
    :catch_4
    sget-object p0, Lcom/amazon/ea/util/JSONUtil;->TAG:Ljava/lang/String;

    const-string v3, "io exception occurred while trying to parse input stream to json object"

    invoke-static {p0, v3}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_4

    .line 63
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_3

    .line 65
    :catch_5
    sget-object p0, Lcom/amazon/ea/util/JSONUtil;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    return-object v1

    :catchall_1
    move-exception p0

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_5

    .line 63
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_5

    .line 65
    :catch_6
    sget-object v1, Lcom/amazon/ea/util/JSONUtil;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_5
    :goto_5
    throw p0
.end method
