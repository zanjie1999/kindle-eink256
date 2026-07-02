.class public Lcom/amazon/appexpan/client/download/CompressedResourceHandler;
.super Ljava/lang/Object;
.source "CompressedResourceHandler.java"


# static fields
.field private static final COMPRESSED_EXT:Ljava/lang/String; = ".zip"

.field private static final TAG:Ljava/lang/String; = "com.amazon.appexpan.client.download.CompressedResourceHandler"


# instance fields
.field private final dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/amazon/appexpan/client/download/CompressedResourceHandler;->dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    return-void
.end method


# virtual methods
.method public isCompressedResource(Ljava/io/File;)Z
    .locals 1

    .line 44
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".zip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public uncompressResource(Ljava/io/File;Ljava/io/File;)Z
    .locals 9

    const-string v0, "Exception when closing zip stream"

    .line 61
    invoke-virtual {p0, p1}, Lcom/amazon/appexpan/client/download/CompressedResourceHandler;->isCompressedResource(Ljava/io/File;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 68
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-direct {v4, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 70
    :try_start_1
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 74
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 76
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 77
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    .line 81
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 87
    sget-object v7, Lcom/amazon/appexpan/client/download/CompressedResourceHandler;->TAG:Ljava/lang/String;

    const-string v8, "Uncompressing downloaded file."

    invoke-static {v7, v8}, Lcom/amazon/appexpan/client/AppExpanLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 90
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 96
    invoke-virtual {v4, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    .line 97
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 99
    invoke-static {v5, v7}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 100
    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 101
    invoke-static {v7}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 82
    :cond_2
    new-instance p2, Ljava/lang/SecurityException;

    const-string v3, "File: %s contains path traversing entry: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v2

    .line 84
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v1

    .line 83
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    :cond_3
    :try_start_2
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 121
    sget-object v2, Lcom/amazon/appexpan/client/download/CompressedResourceHandler;->TAG:Ljava/lang/String;

    invoke-static {v2, v0, p2}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    const/4 v2, 0x1

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v3, v4

    goto :goto_4

    :catch_1
    move-exception p2

    move-object v3, v4

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p2

    .line 109
    :goto_2
    :try_start_3
    sget-object v1, Lcom/amazon/appexpan/client/download/CompressedResourceHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure in unzipping archive "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, p2}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_4

    .line 117
    :try_start_4
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p2

    .line 121
    sget-object v1, Lcom/amazon/appexpan/client/download/CompressedResourceHandler;->TAG:Ljava/lang/String;

    invoke-static {v1, v0, p2}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    if-eqz v2, :cond_5

    .line 129
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    .line 130
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_5

    .line 132
    sget-object p1, Lcom/amazon/appexpan/client/download/CompressedResourceHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in deleting the file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return v2

    :goto_4
    if-eqz v3, :cond_6

    .line 117
    :try_start_5
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception p2

    .line 121
    sget-object v1, Lcom/amazon/appexpan/client/download/CompressedResourceHandler;->TAG:Ljava/lang/String;

    invoke-static {v1, v0, p2}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    :cond_6
    :goto_5
    throw p1
.end method
