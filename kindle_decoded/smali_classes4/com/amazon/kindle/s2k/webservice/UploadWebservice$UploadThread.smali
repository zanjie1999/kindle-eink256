.class Lcom/amazon/kindle/s2k/webservice/UploadWebservice$UploadThread;
.super Ljava/lang/Object;
.source "UploadWebservice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/s2k/webservice/UploadWebservice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/s2k/webservice/UploadWebservice;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/s2k/webservice/UploadWebservice;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice$UploadThread;->this$0:Lcom/amazon/kindle/s2k/webservice/UploadWebservice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 52
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice$UploadThread;->this$0:Lcom/amazon/kindle/s2k/webservice/UploadWebservice;

    invoke-static {v1}, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->access$000(Lcom/amazon/kindle/s2k/webservice/UploadWebservice;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-string v3, "ABORTED"

    const-string v4, "InternalError"

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-lez v7, :cond_4

    .line 54
    iget-object v5, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice$UploadThread;->this$0:Lcom/amazon/kindle/s2k/webservice/UploadWebservice;

    invoke-static {v5}, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->access$100(Lcom/amazon/kindle/s2k/webservice/UploadWebservice;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "Mozilla/5.0"

    .line 57
    invoke-static {v5}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v5

    .line 58
    new-instance v6, Lorg/apache/http/client/methods/HttpPut;

    iget-object v7, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice$UploadThread;->this$0:Lcom/amazon/kindle/s2k/webservice/UploadWebservice;

    invoke-static {v7}, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->access$200(Lcom/amazon/kindle/s2k/webservice/UploadWebservice;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 60
    iget-object v7, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice$UploadThread;->this$0:Lcom/amazon/kindle/s2k/webservice/UploadWebservice;

    invoke-static {v7}, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->access$300(Lcom/amazon/kindle/s2k/webservice/UploadWebservice;)Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;

    move-result-object v7

    const-string v8, ""

    const-string v9, "BEFORE_UPLOAD"

    invoke-virtual {v7, v9, v8}, Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;->reportState(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v7, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice$UploadThread;->this$0:Lcom/amazon/kindle/s2k/webservice/UploadWebservice;

    invoke-static {v7}, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->access$300(Lcom/amazon/kindle/s2k/webservice/UploadWebservice;)Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Lcom/amazon/foundation/AbstractStatusTracker;->setMaxProgress(J)V

    const/4 v7, 0x4

    .line 64
    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 65
    new-instance v10, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;

    invoke-direct {v10, v9, v1, v2}, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 66
    iget-object v1, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice$UploadThread;->this$0:Lcom/amazon/kindle/s2k/webservice/UploadWebservice;

    invoke-static {v1}, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->access$300(Lcom/amazon/kindle/s2k/webservice/UploadWebservice;)Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice$UploadThread;->this$0:Lcom/amazon/kindle/s2k/webservice/UploadWebservice;

    invoke-static {v2}, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->access$400(Lcom/amazon/kindle/s2k/webservice/UploadWebservice;)Lcom/amazon/foundation/ICallback;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Lcom/amazon/kindle/s2k/webservice/CountInputStreamEntity;->setStatusTracker(Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;Lcom/amazon/foundation/ICallback;)V

    .line 67
    invoke-virtual {v6, v10}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 70
    iget-object v1, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice$UploadThread;->this$0:Lcom/amazon/kindle/s2k/webservice/UploadWebservice;

    invoke-static {v1}, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->access$300(Lcom/amazon/kindle/s2k/webservice/UploadWebservice;)Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;

    move-result-object v1

    const-string v2, "UPLOADING"

    invoke-virtual {v1, v2, v8}, Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;->reportState(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v5, v6}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 72
    iget-object v2, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice$UploadThread;->this$0:Lcom/amazon/kindle/s2k/webservice/UploadWebservice;

    invoke-static {v2}, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->access$100(Lcom/amazon/kindle/s2k/webservice/UploadWebservice;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 74
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 77
    iget-object v2, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice$UploadThread;->this$0:Lcom/amazon/kindle/s2k/webservice/UploadWebservice;

    invoke-static {v2}, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->access$300(Lcom/amazon/kindle/s2k/webservice/UploadWebservice;)Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;

    move-result-object v2

    const-string v3, "UPLOAD_COMPLETE"

    const-string v4, "SUCCESS"

    invoke-virtual {v2, v3, v4}, Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;->reportState(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->access$500()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File upload complete : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v7, v3}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 79
    iget-object v2, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice$UploadThread;->this$0:Lcom/amazon/kindle/s2k/webservice/UploadWebservice;

    invoke-static {v2}, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->access$600(Lcom/amazon/kindle/s2k/webservice/UploadWebservice;)Lcom/amazon/foundation/ICallback;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 81
    iget-object v2, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice$UploadThread;->this$0:Lcom/amazon/kindle/s2k/webservice/UploadWebservice;

    invoke-static {v2}, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->access$600(Lcom/amazon/kindle/s2k/webservice/UploadWebservice;)Lcom/amazon/foundation/ICallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/foundation/ICallback;->execute()V

    goto :goto_0

    .line 86
    :cond_0
    iget-object v2, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice$UploadThread;->this$0:Lcom/amazon/kindle/s2k/webservice/UploadWebservice;

    invoke-static {v2}, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->access$300(Lcom/amazon/kindle/s2k/webservice/UploadWebservice;)Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;

    move-result-object v2

    const-string v3, "Server Error"

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;->reportState(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->access$500()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Uploading file : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v7, v3}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 88
    iget-object v2, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice$UploadThread;->this$0:Lcom/amazon/kindle/s2k/webservice/UploadWebservice;

    invoke-static {v2}, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->access$700(Lcom/amazon/kindle/s2k/webservice/UploadWebservice;)Lcom/amazon/foundation/ICallback;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 90
    iget-object v2, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice$UploadThread;->this$0:Lcom/amazon/kindle/s2k/webservice/UploadWebservice;

    invoke-static {v2}, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->access$700(Lcom/amazon/kindle/s2k/webservice/UploadWebservice;)Lcom/amazon/foundation/ICallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/foundation/ICallback;->execute()V

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpPut;->abort()V

    .line 97
    iget-object v2, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice$UploadThread;->this$0:Lcom/amazon/kindle/s2k/webservice/UploadWebservice;

    invoke-static {v2}, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->access$300(Lcom/amazon/kindle/s2k/webservice/UploadWebservice;)Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;

    move-result-object v2

    invoke-virtual {v2, v4, v3}, Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;->reportState(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice$UploadThread;->this$0:Lcom/amazon/kindle/s2k/webservice/UploadWebservice;

    invoke-static {v2}, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->access$700(Lcom/amazon/kindle/s2k/webservice/UploadWebservice;)Lcom/amazon/foundation/ICallback;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 100
    iget-object v2, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice$UploadThread;->this$0:Lcom/amazon/kindle/s2k/webservice/UploadWebservice;

    invoke-static {v2}, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->access$700(Lcom/amazon/kindle/s2k/webservice/UploadWebservice;)Lcom/amazon/foundation/ICallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/foundation/ICallback;->execute()V

    .line 104
    :cond_2
    :goto_0
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 108
    :try_start_1
    invoke-static {}, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->access$500()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error uploading file : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v7, v3}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 109
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    iget-object v1, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice$UploadThread;->this$0:Lcom/amazon/kindle/s2k/webservice/UploadWebservice;

    invoke-static {v1}, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->access$300(Lcom/amazon/kindle/s2k/webservice/UploadWebservice;)Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;

    move-result-object v1

    const-string v2, "ConnectionError"

    const-string v3, "ERROR"

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;->reportState(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice$UploadThread;->this$0:Lcom/amazon/kindle/s2k/webservice/UploadWebservice;

    invoke-static {v1}, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->access$700(Lcom/amazon/kindle/s2k/webservice/UploadWebservice;)Lcom/amazon/foundation/ICallback;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 113
    iget-object v1, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice$UploadThread;->this$0:Lcom/amazon/kindle/s2k/webservice/UploadWebservice;

    invoke-static {v1}, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->access$700(Lcom/amazon/kindle/s2k/webservice/UploadWebservice;)Lcom/amazon/foundation/ICallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/foundation/ICallback;->execute()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    :cond_3
    :goto_1
    invoke-virtual {v5}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 121
    invoke-static {v0}, Lcom/amazon/kindle/s2k/STKUtils;->deleteFileInS2KCacheDirectory(Ljava/io/File;)V

    goto :goto_3

    .line 118
    :goto_2
    invoke-virtual {v5}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 121
    invoke-static {v0}, Lcom/amazon/kindle/s2k/STKUtils;->deleteFileInS2KCacheDirectory(Ljava/io/File;)V

    .line 122
    throw v1

    .line 126
    :cond_4
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice$UploadThread;->this$0:Lcom/amazon/kindle/s2k/webservice/UploadWebservice;

    invoke-static {v0}, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->access$300(Lcom/amazon/kindle/s2k/webservice/UploadWebservice;)Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;->reportState(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice$UploadThread;->this$0:Lcom/amazon/kindle/s2k/webservice/UploadWebservice;

    invoke-static {v0}, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->access$700(Lcom/amazon/kindle/s2k/webservice/UploadWebservice;)Lcom/amazon/foundation/ICallback;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 129
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebservice$UploadThread;->this$0:Lcom/amazon/kindle/s2k/webservice/UploadWebservice;

    invoke-static {v0}, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->access$700(Lcom/amazon/kindle/s2k/webservice/UploadWebservice;)Lcom/amazon/foundation/ICallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/foundation/ICallback;->execute()V

    :cond_5
    :goto_3
    return-void
.end method
