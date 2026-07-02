.class Lcom/amazon/device/ads/FileInputHandler;
.super Lcom/amazon/device/ads/FileHandler;
.source "FileInputHandler.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private bufferedReader:Ljava/io/BufferedReader;

.field private inputStream:Ljava/io/InputStream;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/amazon/device/ads/FileInputHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/FileInputHandler;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Lcom/amazon/device/ads/FileHandler;-><init>()V

    .line 21
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    sget-object v1, Lcom/amazon/device/ads/FileInputHandler;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/FileInputHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    return-void
.end method

.method private checkReadable()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/amazon/device/ads/FileInputHandler;->bufferedReader:Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    return-void

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not read from the file because no file has been opened yet. Please set the file, then call open() before attempting to read."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/amazon/device/ads/FileHandler;->closeCloseables()V

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/amazon/device/ads/FileInputHandler;->bufferedReader:Ljava/io/BufferedReader;

    .line 72
    iput-object v0, p0, Lcom/amazon/device/ads/FileInputHandler;->inputStream:Ljava/io/InputStream;

    return-void
.end method

.method protected getCloseableReaderWriter()Ljava/io/Closeable;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/amazon/device/ads/FileInputHandler;->bufferedReader:Ljava/io/BufferedReader;

    return-object v0
.end method

.method protected getCloseableStream()Ljava/io/Closeable;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/amazon/device/ads/FileInputHandler;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public open()Z
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/amazon/device/ads/FileHandler;->file:Ljava/io/File;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/amazon/device/ads/FileInputHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "A file must be set before it can be opened."

    invoke-virtual {v0, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    return v1

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/FileInputHandler;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/amazon/device/ads/FileInputHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "The file is already open."

    invoke-virtual {v0, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    return v1

    .line 54
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/amazon/device/ads/FileHandler;->file:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/amazon/device/ads/FileInputHandler;->inputStream:Ljava/io/InputStream;

    .line 61
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/amazon/device/ads/FileInputHandler;->inputStream:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/amazon/device/ads/FileInputHandler;->bufferedReader:Ljava/io/BufferedReader;

    const/4 v0, 0x1

    return v0

    :catch_0
    return v1
.end method

.method public readLine()Ljava/lang/String;
    .locals 2

    .line 144
    invoke-direct {p0}, Lcom/amazon/device/ads/FileInputHandler;->checkReadable()V

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/ads/FileInputHandler;->bufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 151
    :catch_0
    iget-object v0, p0, Lcom/amazon/device/ads/FileInputHandler;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Error reading line from file."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
