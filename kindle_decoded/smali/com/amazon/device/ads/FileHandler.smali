.class abstract Lcom/amazon/device/ads/FileHandler;
.super Ljava/lang/Object;
.source "FileHandler.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field file:Ljava/io/File;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/amazon/device/ads/FileHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/FileHandler;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    sget-object v1, Lcom/amazon/device/ads/FileHandler;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/FileHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    return-void
.end method

.method private closeStream()V
    .locals 4

    .line 138
    invoke-virtual {p0}, Lcom/amazon/device/ads/FileHandler;->getCloseableStream()Ljava/io/Closeable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    :try_start_0
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 147
    iget-object v1, p0, Lcom/amazon/device/ads/FileHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "Could not close the stream. %s"

    invoke-virtual {v1, v0, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method protected closeCloseables()V
    .locals 5

    .line 116
    invoke-virtual {p0}, Lcom/amazon/device/ads/FileHandler;->getCloseableReaderWriter()Ljava/io/Closeable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    :try_start_0
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 125
    iget-object v2, p0, Lcom/amazon/device/ads/FileHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v0, "Could not close the %s. %s"

    invoke-virtual {v2, v0, v3}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    invoke-direct {p0}, Lcom/amazon/device/ads/FileHandler;->closeStream()V

    goto :goto_0

    .line 132
    :cond_0
    invoke-direct {p0}, Lcom/amazon/device/ads/FileHandler;->closeStream()V

    :goto_0
    return-void
.end method

.method public doesFileExist()Z
    .locals 2

    .line 92
    invoke-virtual {p0}, Lcom/amazon/device/ads/FileHandler;->isFileSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/amazon/device/ads/FileHandler;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A file has not been set, yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract getCloseableReaderWriter()Ljava/io/Closeable;
.end method

.method protected abstract getCloseableStream()Ljava/io/Closeable;
.end method

.method public getFileLength()J
    .locals 2

    .line 79
    invoke-virtual {p0}, Lcom/amazon/device/ads/FileHandler;->isFileSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/amazon/device/ads/FileHandler;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A file has not been set, yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isFileSet()Z
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/amazon/device/ads/FileHandler;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setFile(Ljava/io/File;)Z
    .locals 2

    .line 49
    invoke-virtual {p0}, Lcom/amazon/device/ads/FileHandler;->isFileSet()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/device/ads/FileHandler;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    .line 57
    :cond_0
    iget-object p1, p0, Lcom/amazon/device/ads/FileHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v0, "Another file is already set in this FileOutputHandler. Close the other file before opening a new one."

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 61
    :cond_1
    iput-object p1, p0, Lcom/amazon/device/ads/FileHandler;->file:Ljava/io/File;

    return v1
.end method

.method public setFile(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    .line 29
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/FileHandler;->setFile(Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method public setFile(Ljava/lang/String;)Z
    .locals 1

    .line 39
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/FileHandler;->setFile(Ljava/io/File;)Z

    move-result p1

    return p1
.end method
