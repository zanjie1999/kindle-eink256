.class final Lcom/amazon/kindle/download/DownloadCompleteEventSender$1;
.super Ljava/lang/Object;
.source "DownloadCompleteEventSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/download/DownloadCompleteEventSender;->sendDownloadCompleteEvent(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bookId:Lcom/amazon/kindle/model/content/IBookID;

.field final synthetic val$correlationId:Ljava/lang/String;

.field final synthetic val$downloadEventStats:Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;

.field final synthetic val$errorState:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

.field final synthetic val$groupContext:Ljava/lang/String;

.field final synthetic val$requestToStatus:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;Ljava/lang/String;Ljava/util/Map;Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/amazon/kindle/download/DownloadCompleteEventSender$1;->val$errorState:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    iput-object p2, p0, Lcom/amazon/kindle/download/DownloadCompleteEventSender$1;->val$correlationId:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kindle/download/DownloadCompleteEventSender$1;->val$downloadEventStats:Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;

    iput-object p4, p0, Lcom/amazon/kindle/download/DownloadCompleteEventSender$1;->val$groupContext:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazon/kindle/download/DownloadCompleteEventSender$1;->val$requestToStatus:Ljava/util/Map;

    iput-object p6, p0, Lcom/amazon/kindle/download/DownloadCompleteEventSender$1;->val$bookId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "ODOT download complete event failed for bookid: "

    .line 97
    invoke-static {}, Lcom/amazon/kindle/download/DownloadCompleteEventSender;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sending download complete event ODOT message"

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/download/DownloadCompleteEventSender$1;->val$errorState:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    iget-object v2, p0, Lcom/amazon/kindle/download/DownloadCompleteEventSender$1;->val$correlationId:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/kindle/download/DownloadCompleteEventSender$1;->val$downloadEventStats:Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;

    iget-object v4, p0, Lcom/amazon/kindle/download/DownloadCompleteEventSender$1;->val$groupContext:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/kindle/download/DownloadCompleteEventSender$1;->val$requestToStatus:Ljava/util/Map;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/amazon/kindle/download/DownloadCompleteEventSender;->getDeliveryMessage(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    .line 101
    invoke-static {}, Lcom/amazon/kindle/download/DownloadCompleteEventSender;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reporting download metrics to Delivery "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v1, :cond_0

    .line 109
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 112
    :try_start_1
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 113
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 114
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 125
    :try_start_2
    invoke-static {}, Lcom/amazon/kindle/download/DownloadDiscoveryEntryPoints;->getInstance()Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;->getKrlForDownloadFacade()Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    move-result-object v1

    const-string v3, "content.download.response"

    .line 126
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->sendDCMMessage(Ljava/lang/String;[B)V
    :try_end_2
    .catch Lcom/amazon/kindle/krx/messaging/SendMessageFailureException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 128
    invoke-static {}, Lcom/amazon/kindle/download/DownloadCompleteEventSender;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kindle/download/DownloadCompleteEventSender$1;->val$bookId:Lcom/amazon/kindle/model/content/IBookID;

    .line 129
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {v2, v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 116
    invoke-static {}, Lcom/amazon/kindle/download/DownloadCompleteEventSender;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ODOT message could not be gzipped download complete event failed for bookid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/download/DownloadCompleteEventSender$1;->val$bookId:Lcom/amazon/kindle/model/content/IBookID;

    .line 118
    invoke-interface {v3}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void

    :catch_2
    move-exception v1

    .line 104
    invoke-static {}, Lcom/amazon/kindle/download/DownloadCompleteEventSender;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kindle/download/DownloadCompleteEventSender$1;->val$bookId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
