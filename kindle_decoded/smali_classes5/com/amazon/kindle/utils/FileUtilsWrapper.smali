.class public Lcom/amazon/kindle/utils/FileUtilsWrapper;
.super Ljava/lang/Object;
.source "FileUtilsWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.kindle.utils.FileUtilsWrapper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyDirectory(Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-static {}, Lcom/amazon/kindle/utils/FileUtilsWrapper;->setThreadContextClassLoaderIfNeeded()V

    .line 65
    invoke-static {p0, p1}, Lorg/apache/commons/io/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-static {}, Lcom/amazon/kindle/utils/FileUtilsWrapper;->setThreadContextClassLoaderIfNeeded()V

    .line 50
    invoke-static {p0, p1}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method public static deleteDirectory(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    invoke-static {}, Lcom/amazon/kindle/utils/FileUtilsWrapper;->setThreadContextClassLoaderIfNeeded()V

    .line 30
    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V

    return-void
.end method

.method public static deleteQuietly(Ljava/io/File;)Z
    .locals 0

    .line 39
    invoke-static {}, Lcom/amazon/kindle/utils/FileUtilsWrapper;->setThreadContextClassLoaderIfNeeded()V

    .line 40
    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static moveDirectory(Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-static {}, Lcom/amazon/kindle/utils/FileUtilsWrapper;->setThreadContextClassLoaderIfNeeded()V

    .line 45
    invoke-static {p0, p1}, Lorg/apache/commons/io/FileUtils;->moveDirectory(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method public static moveFileToDirectory(Ljava/io/File;Ljava/io/File;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-static {}, Lcom/amazon/kindle/utils/FileUtilsWrapper;->setThreadContextClassLoaderIfNeeded()V

    .line 60
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/FileUtils;->moveToDirectory(Ljava/io/File;Ljava/io/File;Z)V

    return-void
.end method

.method public static moveToDirectory(Ljava/io/File;Ljava/io/File;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-static {}, Lcom/amazon/kindle/utils/FileUtilsWrapper;->setThreadContextClassLoaderIfNeeded()V

    .line 35
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/FileUtils;->moveToDirectory(Ljava/io/File;Ljava/io/File;Z)V

    return-void
.end method

.method private static setThreadContextClassLoaderIfNeeded()V
    .locals 2

    .line 78
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "com.amazon.kindle.utils.FileUtilsWrapper"

    const-string v1, "getContextClassLoader() is null and needs to be updated"

    .line 79
    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-class v1, Lcom/amazon/kindle/utils/FileUtilsWrapper;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    return-void
.end method

.method public static sizeOfDirectory(Ljava/io/File;)J
    .locals 2

    .line 24
    invoke-static {}, Lcom/amazon/kindle/utils/FileUtilsWrapper;->setThreadContextClassLoaderIfNeeded()V

    .line 25
    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->sizeOfDirectory(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method
