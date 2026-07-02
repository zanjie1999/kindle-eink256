.class Lcom/amazon/kcp/home/util/CardImageProvider$CardImageProviderResultResponseHandler;
.super Lcom/amazon/kindle/webservices/ResultResponseHandler;
.source "CardImageProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/home/util/CardImageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CardImageProviderResultResponseHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/webservices/ResultResponseHandler<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final filename:Ljava/lang/String;

.field final key:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kcp/home/util/CardImageProvider;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/home/util/CardImageProvider;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/amazon/kcp/home/util/CardImageProvider$CardImageProviderResultResponseHandler;->this$0:Lcom/amazon/kcp/home/util/CardImageProvider;

    invoke-direct {p0}, Lcom/amazon/kindle/webservices/ResultResponseHandler;-><init>()V

    .line 131
    iput-object p2, p0, Lcom/amazon/kcp/home/util/CardImageProvider$CardImageProviderResultResponseHandler;->key:Ljava/lang/String;

    .line 132
    iput-object p3, p0, Lcom/amazon/kcp/home/util/CardImageProvider$CardImageProviderResultResponseHandler;->filename:Ljava/lang/String;

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

    .line 138
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 140
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/amazon/kcp/home/util/CardImageProvider$CardImageProviderResultResponseHandler;->filename:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 142
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 143
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 145
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 160
    invoke-static {v0}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 161
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webservices/ResultResponseHandler;->setResult(Ljava/lang/Object;)V

    return-void

    :cond_1
    const/high16 v1, 0x10000

    .line 148
    :try_start_1
    invoke-static {p1, v0, v1}, Lcom/amazon/kcp/util/IOUtils;->writeInToOut(Ljava/io/InputStream;Ljava/io/OutputStream;I)I

    move-result p1

    if-lez p1, :cond_2

    .line 150
    iget-object p1, p0, Lcom/amazon/kcp/home/util/CardImageProvider$CardImageProviderResultResponseHandler;->this$0:Lcom/amazon/kcp/home/util/CardImageProvider;

    iget-object v1, p0, Lcom/amazon/kcp/home/util/CardImageProvider$CardImageProviderResultResponseHandler;->key:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/kcp/home/util/CardImageProvider$CardImageProviderResultResponseHandler;->filename:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-static {p1, v1, v3, v4}, Lcom/amazon/kcp/home/util/CardImageProvider;->access$400(Lcom/amazon/kcp/home/util/CardImageProvider;Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 152
    invoke-static {}, Lcom/amazon/kcp/home/util/CardImageProvider;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully persisted image to disk for key "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kcp/home/util/CardImageProvider$CardImageProviderResultResponseHandler;->key:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 161
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webservices/ResultResponseHandler;->setResult(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 157
    :catch_0
    :try_start_2
    invoke-static {}, Lcom/amazon/kcp/home/util/CardImageProvider;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while fetching image for key: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kcp/home/util/CardImageProvider$CardImageProviderResultResponseHandler;->key:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 160
    :goto_2
    invoke-static {v0}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 161
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/webservices/ResultResponseHandler;->setResult(Ljava/lang/Object;)V

    .line 162
    throw p1
.end method
