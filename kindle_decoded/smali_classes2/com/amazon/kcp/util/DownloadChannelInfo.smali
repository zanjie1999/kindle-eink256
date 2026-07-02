.class public Lcom/amazon/kcp/util/DownloadChannelInfo;
.super Ljava/lang/Object;
.source "DownloadChannelInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static downloadChannel:Ljava/lang/String;

.field private static volatile isInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/amazon/kcp/util/DownloadChannelInfo;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/util/DownloadChannelInfo;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 23
    sput-object v0, Lcom/amazon/kcp/util/DownloadChannelInfo;->downloadChannel:Ljava/lang/String;

    const/4 v0, 0x0

    .line 24
    sput-boolean v0, Lcom/amazon/kcp/util/DownloadChannelInfo;->isInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDownloadChannel()Ljava/lang/String;
    .locals 2

    .line 58
    sget-boolean v0, Lcom/amazon/kcp/util/DownloadChannelInfo;->isInitialized:Z

    if-nez v0, :cond_1

    .line 59
    const-class v0, Lcom/amazon/kcp/util/DownloadChannelInfo;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-boolean v1, Lcom/amazon/kcp/util/DownloadChannelInfo;->isInitialized:Z

    if-nez v1, :cond_0

    .line 61
    invoke-static {}, Lcom/amazon/kcp/util/DownloadChannelInfo;->init()V

    const/4 v1, 0x1

    .line 62
    sput-boolean v1, Lcom/amazon/kcp/util/DownloadChannelInfo;->isInitialized:Z

    .line 64
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 66
    :cond_1
    :goto_0
    sget-object v0, Lcom/amazon/kcp/util/DownloadChannelInfo;->downloadChannel:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized init()V
    .locals 6

    const-class v0, Lcom/amazon/kcp/util/DownloadChannelInfo;

    monitor-enter v0

    .line 31
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 33
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "raw/download_channel"

    const-string v4, "raw"

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v3, 0x0

    .line 37
    :try_start_1
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 38
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-static {v1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 41
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kcp/util/DownloadChannelInfo;->downloadChannel:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    :cond_0
    :try_start_3
    invoke-static {v2}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v3, v2

    goto :goto_1

    :catch_0
    move-object v3, v2

    goto :goto_0

    :catchall_1
    move-exception v1

    goto :goto_1

    .line 44
    :catch_1
    :goto_0
    :try_start_4
    sget-object v1, Lcom/amazon/kcp/util/DownloadChannelInfo;->TAG:Ljava/lang/String;

    const-string v2, "Cannot parse download channel file!"

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 46
    :try_start_5
    invoke-static {v3}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    :goto_1
    invoke-static {v3}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 47
    throw v1

    .line 49
    :cond_1
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download Channel information initialized, downloadChannel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kcp/util/DownloadChannelInfo;->downloadChannel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 50
    monitor-exit v0

    return-void

    :catchall_2
    move-exception v1

    monitor-exit v0

    throw v1
.end method
