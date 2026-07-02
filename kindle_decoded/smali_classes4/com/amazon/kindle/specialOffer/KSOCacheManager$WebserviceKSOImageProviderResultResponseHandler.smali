.class Lcom/amazon/kindle/specialOffer/KSOCacheManager$WebserviceKSOImageProviderResultResponseHandler;
.super Lcom/amazon/kindle/webservices/ResultResponseHandler;
.source "KSOCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/specialOffer/KSOCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebserviceKSOImageProviderResultResponseHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/webservices/ResultResponseHandler<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field data:Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;

.field filename:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kindle/specialOffer/KSOCacheManager;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/specialOffer/KSOCacheManager;Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;Ljava/lang/String;I)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/amazon/kindle/specialOffer/KSOCacheManager$WebserviceKSOImageProviderResultResponseHandler;->this$0:Lcom/amazon/kindle/specialOffer/KSOCacheManager;

    invoke-direct {p0}, Lcom/amazon/kindle/webservices/ResultResponseHandler;-><init>()V

    .line 152
    iput-object p2, p0, Lcom/amazon/kindle/specialOffer/KSOCacheManager$WebserviceKSOImageProviderResultResponseHandler;->data:Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;

    .line 153
    iput-object p3, p0, Lcom/amazon/kindle/specialOffer/KSOCacheManager$WebserviceKSOImageProviderResultResponseHandler;->filename:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onInputStream(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/webservices/ResponseHandlerException;
        }
    .end annotation

    .line 160
    new-instance v0, Lcom/amazon/whispersync/org/apache/commons/io/output/ByteArrayOutputStream;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/apache/commons/io/output/ByteArrayOutputStream;-><init>()V

    .line 162
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/amazon/kindle/specialOffer/KSOCacheManager$WebserviceKSOImageProviderResultResponseHandler;->filename:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 165
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 167
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 188
    invoke-static {v0}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :cond_1
    const/high16 v1, 0x10000

    .line 170
    :try_start_1
    invoke-static {p1, v0, v1}, Lcom/amazon/kcp/util/IOUtils;->writeInToOut(Ljava/io/InputStream;Ljava/io/OutputStream;I)I

    move-result p1

    if-lez p1, :cond_3

    .line 172
    iget-object p1, p0, Lcom/amazon/kindle/specialOffer/KSOCacheManager$WebserviceKSOImageProviderResultResponseHandler;->this$0:Lcom/amazon/kindle/specialOffer/KSOCacheManager;

    iget-object v1, p0, Lcom/amazon/kindle/specialOffer/KSOCacheManager$WebserviceKSOImageProviderResultResponseHandler;->filename:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kindle/specialOffer/KSOCacheManager$WebserviceKSOImageProviderResultResponseHandler;->data:Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;

    invoke-virtual {v3}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->getCampaignId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/amazon/kindle/specialOffer/KSOCacheManager;->persistToDisk(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 174
    iget-object p1, p0, Lcom/amazon/kindle/specialOffer/KSOCacheManager$WebserviceKSOImageProviderResultResponseHandler;->data:Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;

    iget-object v1, p0, Lcom/amazon/kindle/specialOffer/KSOCacheManager$WebserviceKSOImageProviderResultResponseHandler;->filename:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->setLocalImagePath(Ljava/lang/String;)V

    .line 175
    iget-object p1, p0, Lcom/amazon/kindle/specialOffer/KSOCacheManager$WebserviceKSOImageProviderResultResponseHandler;->this$0:Lcom/amazon/kindle/specialOffer/KSOCacheManager;

    invoke-static {p1}, Lcom/amazon/kindle/specialOffer/KSOCacheManager;->access$000(Lcom/amazon/kindle/specialOffer/KSOCacheManager;)Lcom/amazon/kindle/specialOffer/KSOContentDAO;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/kindle/specialOffer/KSOCacheManager$WebserviceKSOImageProviderResultResponseHandler;->data:Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/specialOffer/KSOContentDAO;->updateOrAddContent(Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 177
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 180
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/specialOffer/KSOCacheManager$WebserviceKSOImageProviderResultResponseHandler;->data:Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;

    invoke-virtual {p1}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->getCampaignId()Ljava/lang/String;

    move-result-object p1

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "*******"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 182
    invoke-static {}, Lcom/amazon/kindle/specialOffer/KSOCacheManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Save data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 186
    :catch_0
    :try_start_2
    iget-object p1, p0, Lcom/amazon/kindle/specialOffer/KSOCacheManager$WebserviceKSOImageProviderResultResponseHandler;->this$0:Lcom/amazon/kindle/specialOffer/KSOCacheManager;

    iget-object v1, p0, Lcom/amazon/kindle/specialOffer/KSOCacheManager$WebserviceKSOImageProviderResultResponseHandler;->data:Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;

    invoke-virtual {v1}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->getCampaignId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fail_fetch_image"

    invoke-virtual {p1, v1, v2}, Lcom/amazon/kindle/specialOffer/KSOCacheManager;->reportKSOMetric(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 188
    :cond_3
    :goto_0
    invoke-static {v0}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :goto_1
    invoke-static {v0}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 189
    throw p1
.end method
