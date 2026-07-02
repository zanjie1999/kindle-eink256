.class public Lcom/amazon/kedu/ftue/assets/FileSystemFileProvider;
.super Ljava/lang/Object;
.source "FileSystemFileProvider.java"

# interfaces
.implements Lcom/amazon/kedu/ftue/assets/IFileProvider;


# static fields
.field private static final ASSET_DIRECTORY:Ljava/lang/String; = "/out_of_band_assets/"

.field private static final TAG:Ljava/lang/String; = "com.amazon.kedu.ftue.assets.FileSystemFileProvider"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getBasePath()Ljava/lang/String;
    .locals 2

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amazon/kedu/ftue/Plugin;->getSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readTextInputStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    .line 167
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 173
    :goto_0
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 175
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 178
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 182
    sget-object v1, Lcom/amazon/kedu/ftue/assets/FileSystemFileProvider;->TAG:Ljava/lang/String;

    const-string v2, "Failed in reading textfile"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private tryClose(Ljava/io/InputStream;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 108
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 112
    sget-object v0, Lcom/amazon/kedu/ftue/assets/FileSystemFileProvider;->TAG:Ljava/lang/String;

    const-string v1, "failed closing input stream"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public deleteDirectory(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    invoke-static {p1}, Lorg/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V

    return-void
.end method

.method public getAssetDirectory()Ljava/io/File;
    .locals 3

    .line 23
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/amazon/kedu/ftue/assets/FileSystemFileProvider;->getBasePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/out_of_band_assets/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 50
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 59
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getInputStream(Ljava/io/File;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public getSeparator()Ljava/lang/String;
    .locals 1

    .line 144
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionDirectory(I)Ljava/io/File;
    .locals 4

    .line 32
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/amazon/kedu/ftue/assets/FileSystemFileProvider;->getAssetDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "v_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getVersionFile(ILjava/lang/String;)Ljava/io/File;
    .locals 1

    .line 41
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/amazon/kedu/ftue/assets/FileSystemFileProvider;->getVersionDirectory(I)Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public readTextFile(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 72
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 73
    :try_start_1
    invoke-direct {p0, v1}, Lcom/amazon/kedu/ftue/assets/FileSystemFileProvider;->readTextInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    invoke-direct {p0, v1}, Lcom/amazon/kedu/ftue/assets/FileSystemFileProvider;->tryClose(Ljava/io/InputStream;)V

    return-object p1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    invoke-direct {p0, v0}, Lcom/amazon/kedu/ftue/assets/FileSystemFileProvider;->tryClose(Ljava/io/InputStream;)V

    .line 78
    throw p1
.end method

.method public readTextStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1

    .line 92
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/kedu/ftue/assets/FileSystemFileProvider;->readTextInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    invoke-direct {p0, p1}, Lcom/amazon/kedu/ftue/assets/FileSystemFileProvider;->tryClose(Ljava/io/InputStream;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, p1}, Lcom/amazon/kedu/ftue/assets/FileSystemFileProvider;->tryClose(Ljava/io/InputStream;)V

    .line 97
    throw v0
.end method

.method public writeTextFile(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2

    .line 126
    :try_start_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 127
    invoke-virtual {v0, p2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 133
    sget-object p2, Lcom/amazon/kedu/ftue/assets/FileSystemFileProvider;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File write failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    return p1
.end method
