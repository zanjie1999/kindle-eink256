.class public Lcom/amazon/kindle/fastmetrics/service/provider/SushiPublisher;
.super Ljava/lang/Object;
.source "SushiPublisher.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "SushiPublisher"


# instance fields
.field private final mFastMetrics:Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/amazon/kindle/fastmetrics/service/provider/SushiPublisher;->mFastMetrics:Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "SushiPublisher"

    .line 32
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "https://unagi-na.amazon.com/1/events/com.amazon.eel.KindleFastMetrics.Prod.Android.fm"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 38
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_1

    const-wide/16 v2, 0x7530

    .line 40
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "Sushi flush thread was interrupted."

    .line 42
    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 45
    :goto_1
    iget-object v2, p0, Lcom/amazon/kindle/fastmetrics/service/provider/SushiPublisher;->mFastMetrics:Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;

    if-eqz v2, :cond_0

    .line 46
    invoke-virtual {v2}, Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;->GetPayload()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 47
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 48
    invoke-virtual {p0, v1, v2}, Lcom/amazon/kindle/fastmetrics/service/provider/SushiPublisher;->sendRequest(Ljava/net/URL;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void

    :catch_1
    move-exception v1

    const-string v2, "The Sushi endpoint is incorrect"

    .line 34
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method protected sendRequest(Ljava/net/URL;Ljava/lang/String;)V
    .locals 6

    const-string v0, "SushiPublisher"

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 57
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 58
    :try_start_1
    invoke-virtual {v4, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 59
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v4, v3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 60
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/amazon/kindle/fastmetrics/service/provider/SushiPublisher;->write(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    const/16 v3, 0xc8

    if-eq p2, v3, :cond_0

    const-string v3, "Response from Sushi is %s with a message of %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 64
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, v1

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v5, v2

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz v4, :cond_1

    .line 70
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v3, v4

    goto :goto_2

    :catch_0
    move-exception p2

    move-object v3, v4

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p2

    :goto_0
    :try_start_2
    const-string v4, "Error opening a connection to Sushi using endpoint %s"

    new-array v2, v2, [Ljava/lang/Object;

    .line 67
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_1

    .line 70
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    :goto_1
    return-void

    :goto_2
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 72
    :cond_2
    throw p1
.end method

.method protected write(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string p1, "UTF-8"

    .line 77
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception p1

    .line 76
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    .line 78
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    const-string p2, "SushiPublisher"

    const-string v0, "An error occurred when trying to write a FastMetrics payload to the Sushi request."

    .line 79
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    throw p1
.end method
