.class public Lcom/amazon/kcp/home/util/CardImageProvider;
.super Ljava/lang/Object;
.source "CardImageProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/home/util/CardImageProvider$CardImageProviderResultResponseHandler;,
        Lcom/amazon/kcp/home/util/CardImageProvider$GetImageFromWebTask;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private requestsInFlight:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/home/util/ImageDownloadCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/amazon/kcp/home/util/CardImageProvider;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/home/util/CardImageProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/home/util/CardImageProvider;->requestsInFlight:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/home/util/CardImageProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/home/util/CardImageProvider;->fetchImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lcom/amazon/kcp/home/util/CardImageProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/home/util/CardImageProvider;)Ljava/util/Map;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/amazon/kcp/home/util/CardImageProvider;->requestsInFlight:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/home/util/CardImageProvider;Ljava/lang/String;Ljava/lang/String;[B)Z
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/home/util/CardImageProvider;->persistToDisk(Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result p0

    return p0
.end method

.method private fetchImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 72
    new-instance v0, Lcom/amazon/kcp/home/util/CardImageProvider$CardImageProviderResultResponseHandler;

    invoke-direct {v0, p0, p1, p3}, Lcom/amazon/kcp/home/util/CardImageProvider$CardImageProviderResultResponseHandler;-><init>(Lcom/amazon/kcp/home/util/CardImageProvider;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v1, Lcom/amazon/kcp/home/util/CardImageProvider$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/amazon/kcp/home/util/CardImageProvider$1;-><init>(Lcom/amazon/kcp/home/util/CardImageProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    sget-object p1, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;->BLOCKING:Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    invoke-interface {v1, p1}, Lcom/amazon/kindle/webservices/IWebRequest;->setPriority(Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/amazon/kindle/webservices/IWebRequest;->setResponseHandler(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 97
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;

    move-result-object p1

    .line 98
    invoke-interface {p1, v1}, Lcom/amazon/kindle/webservices/IWebRequestManager;->addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    return-void
.end method

.method private persistToDisk(Ljava/lang/String;Ljava/lang/String;[B)Z
    .locals 6

    const/4 v0, 0x0

    .line 105
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    new-instance p2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 108
    :try_start_1
    invoke-virtual {p2, p3}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 109
    invoke-virtual {p2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 110
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    invoke-static {p2}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v0, p2

    goto :goto_2

    :catch_0
    move-object v0, p2

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    .line 113
    :catch_1
    :goto_0
    :try_start_2
    sget-object p2, Lcom/amazon/kcp/home/util/CardImageProvider;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error while persisting image for key: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 116
    invoke-static {v0}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    const/4 p1, 0x0

    :goto_1
    return p1

    :goto_2
    invoke-static {v0}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 117
    throw p1
.end method


# virtual methods
.method public getImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/home/util/ImageDownloadCallback;)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/amazon/kcp/home/util/CardImageProvider;->requestsInFlight:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Image download already in flight for key: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/home/util/CardImageProvider;->requestsInFlight:Ljava/util/Map;

    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance p4, Lcom/amazon/kcp/home/util/CardImageProvider$GetImageFromWebTask;

    const/4 v0, 0x0

    invoke-direct {p4, p0, v0}, Lcom/amazon/kcp/home/util/CardImageProvider$GetImageFromWebTask;-><init>(Lcom/amazon/kcp/home/util/CardImageProvider;Lcom/amazon/kcp/home/util/CardImageProvider$1;)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    .line 68
    invoke-virtual {p4, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
