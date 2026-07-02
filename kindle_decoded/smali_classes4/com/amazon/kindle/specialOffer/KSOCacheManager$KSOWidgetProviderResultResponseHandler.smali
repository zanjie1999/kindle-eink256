.class Lcom/amazon/kindle/specialOffer/KSOCacheManager$KSOWidgetProviderResultResponseHandler;
.super Lcom/amazon/kindle/webservices/ResultResponseHandler;
.source "KSOCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/specialOffer/KSOCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KSOWidgetProviderResultResponseHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/specialOffer/KSOCacheManager;


# direct methods
.method private constructor <init>(Lcom/amazon/kindle/specialOffer/KSOCacheManager;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/amazon/kindle/specialOffer/KSOCacheManager$KSOWidgetProviderResultResponseHandler;->this$0:Lcom/amazon/kindle/specialOffer/KSOCacheManager;

    invoke-direct {p0}, Lcom/amazon/kindle/webservices/ResultResponseHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kindle/specialOffer/KSOCacheManager;Lcom/amazon/kindle/specialOffer/KSOCacheManager$1;)V
    .locals 0

    .line 228
    invoke-direct {p0, p1}, Lcom/amazon/kindle/specialOffer/KSOCacheManager$KSOWidgetProviderResultResponseHandler;-><init>(Lcom/amazon/kindle/specialOffer/KSOCacheManager;)V

    return-void
.end method


# virtual methods
.method public onInputStream(Ljava/io/InputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/webservices/ResponseHandlerException;
        }
    .end annotation

    const-string v0, "fail_get_campaign"

    const-string v1, "fail to get campaign data"

    const/4 v2, 0x0

    .line 233
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v4, p1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 237
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 239
    :cond_0
    iget-object v4, p0, Lcom/amazon/kindle/specialOffer/KSOCacheManager$KSOWidgetProviderResultResponseHandler;->this$0:Lcom/amazon/kindle/specialOffer/KSOCacheManager;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/amazon/kindle/specialOffer/KSOCacheManager;->access$500(Lcom/amazon/kindle/specialOffer/KSOCacheManager;Ljava/lang/String;)Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 240
    invoke-virtual {p1}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->getCampaignId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 241
    iget-object v4, p0, Lcom/amazon/kindle/specialOffer/KSOCacheManager$KSOWidgetProviderResultResponseHandler;->this$0:Lcom/amazon/kindle/specialOffer/KSOCacheManager;

    invoke-static {v4, p1}, Lcom/amazon/kindle/specialOffer/KSOCacheManager;->access$600(Lcom/amazon/kindle/specialOffer/KSOCacheManager;Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 243
    iget-object v4, p0, Lcom/amazon/kindle/specialOffer/KSOCacheManager$KSOWidgetProviderResultResponseHandler;->this$0:Lcom/amazon/kindle/specialOffer/KSOCacheManager;

    invoke-static {v4}, Lcom/amazon/kindle/specialOffer/KSOCacheManager;->access$000(Lcom/amazon/kindle/specialOffer/KSOCacheManager;)Lcom/amazon/kindle/specialOffer/KSOContentDAO;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazon/kindle/specialOffer/KSOContentDAO;->updateCampaignData(Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;)V

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    .line 245
    invoke-virtual {p1}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    .line 246
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v7

    invoke-interface {v7}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/ksoImage/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 248
    iget-object v6, p0, Lcom/amazon/kindle/specialOffer/KSOCacheManager$KSOWidgetProviderResultResponseHandler;->this$0:Lcom/amazon/kindle/specialOffer/KSOCacheManager;

    invoke-static {v6, p1, v5, v4}, Lcom/amazon/kindle/specialOffer/KSOCacheManager;->access$700(Lcom/amazon/kindle/specialOffer/KSOCacheManager;Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v3, v2

    goto :goto_3

    :catch_0
    move-object v3, v2

    .line 255
    :catch_1
    :try_start_2
    invoke-static {}, Lcom/amazon/kindle/specialOffer/KSOCacheManager;->access$100()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object p1, p0, Lcom/amazon/kindle/specialOffer/KSOCacheManager$KSOWidgetProviderResultResponseHandler;->this$0:Lcom/amazon/kindle/specialOffer/KSOCacheManager;

    invoke-virtual {p1, v2, v0}, Lcom/amazon/kindle/specialOffer/KSOCacheManager;->reportKSOMetric(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_3

    .line 260
    :cond_2
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_2

    :catch_2
    move-object v3, v2

    .line 252
    :catch_3
    :try_start_4
    invoke-static {}, Lcom/amazon/kindle/specialOffer/KSOCacheManager;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v4, "fail to get campaign data: wrong encoding"

    invoke-static {p1, v4}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object p1, p0, Lcom/amazon/kindle/specialOffer/KSOCacheManager$KSOWidgetProviderResultResponseHandler;->this$0:Lcom/amazon/kindle/specialOffer/KSOCacheManager;

    const-string v4, "fail_parse_json"

    invoke-virtual {p1, v2, v4}, Lcom/amazon/kindle/specialOffer/KSOCacheManager;->reportKSOMetric(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v3, :cond_3

    goto :goto_1

    .line 263
    :catch_4
    invoke-static {}, Lcom/amazon/kindle/specialOffer/KSOCacheManager;->access$100()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object p1, p0, Lcom/amazon/kindle/specialOffer/KSOCacheManager$KSOWidgetProviderResultResponseHandler;->this$0:Lcom/amazon/kindle/specialOffer/KSOCacheManager;

    invoke-virtual {p1, v2, v0}, Lcom/amazon/kindle/specialOffer/KSOCacheManager;->reportKSOMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void

    :catchall_1
    move-exception p1

    :goto_3
    if-eqz v3, :cond_4

    .line 260
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_4

    .line 263
    :catch_5
    invoke-static {}, Lcom/amazon/kindle/specialOffer/KSOCacheManager;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v1, p0, Lcom/amazon/kindle/specialOffer/KSOCacheManager$KSOWidgetProviderResultResponseHandler;->this$0:Lcom/amazon/kindle/specialOffer/KSOCacheManager;

    invoke-virtual {v1, v2, v0}, Lcom/amazon/kindle/specialOffer/KSOCacheManager;->reportKSOMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_4
    :goto_4
    throw p1
.end method
