.class public Lcom/amazon/xray/util/DiskUtil;
.super Ljava/lang/Object;
.source "DiskUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.xray.util.DiskUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static readObject(Ljava/io/File;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 72
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 73
    :try_start_1
    new-instance p0, Ljava/io/ObjectInputStream;

    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 74
    :try_start_2
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    invoke-static {v1}, Lcom/amazon/xray/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 77
    invoke-static {p0}, Lcom/amazon/xray/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v2, v0

    move-object v0, p0

    move-object p0, v2

    goto :goto_0

    :catchall_2
    move-exception p0

    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    .line 76
    :goto_0
    invoke-static {v1}, Lcom/amazon/xray/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 77
    invoke-static {p0}, Lcom/amazon/xray/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 78
    throw v0
.end method

.method public static readObjectsFromDirectory(Ljava/io/File;Ljava/io/FileFilter;Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/FileFilter;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 96
    sget-object p0, Lcom/amazon/xray/util/DiskUtil;->TAG:Ljava/lang/String;

    const-string p1, "Could not read objects from disk; Directory is null"

    invoke-static {p0, p1}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 99
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 100
    sget-object p0, Lcom/amazon/xray/util/DiskUtil;->TAG:Ljava/lang/String;

    const-string p1, "Could not read objects from disk; Directory does not exist"

    invoke-static {p0, p1}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 103
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    .line 104
    sget-object p0, Lcom/amazon/xray/util/DiskUtil;->TAG:Ljava/lang/String;

    const-string p1, "Could not read objects from disk; File is not a directory"

    invoke-static {p0, p1}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 108
    :cond_2
    invoke-virtual {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_3

    .line 110
    sget-object p1, Lcom/amazon/xray/util/DiskUtil;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not read objects from disk: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 114
    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 115
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    aget-object v2, p1, v1

    .line 117
    :try_start_0
    invoke-static {v2}, Lcom/amazon/xray/util/DiskUtil;->readObject(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_4

    .line 118
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_4

    .line 119
    sget-object v3, Lcom/amazon/xray/util/DiskUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File could not be deleted: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 122
    sget-object v3, Lcom/amazon/xray/util/DiskUtil;->TAG:Ljava/lang/String;

    const-string v4, "Could not read object from disk"

    invoke-static {v3, v4, v2}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-object p0
.end method

.method public static writeObject(Ljava/io/File;Ljava/io/Serializable;)V
    .locals 4

    const/4 v0, 0x0

    .line 44
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 45
    :try_start_1
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 46
    :try_start_2
    monitor-enter p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 47
    :try_start_3
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 48
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 49
    :try_start_4
    invoke-static {}, Lcom/amazon/xray/plugin/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 50
    sget-object p1, Lcom/amazon/xray/util/DiskUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrote Serializable to file "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/amazon/xray/plugin/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 55
    :cond_0
    invoke-static {v1}, Lcom/amazon/xray/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    .line 48
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_2
    move-exception p0

    move-object v2, v0

    :goto_0
    move-object v0, v1

    goto :goto_4

    :catch_1
    move-exception p0

    move-object v2, v0

    :goto_1
    move-object v0, v1

    goto :goto_2

    :catchall_3
    move-exception p0

    move-object v2, v0

    goto :goto_4

    :catch_2
    move-exception p0

    move-object v2, v0

    .line 53
    :goto_2
    :try_start_7
    sget-object p1, Lcom/amazon/xray/util/DiskUtil;->TAG:Ljava/lang/String;

    const-string v1, "Could not write serializable to disk"

    invoke-static {p1, v1, p0}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 55
    invoke-static {v0}, Lcom/amazon/xray/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 56
    :goto_3
    invoke-static {v2}, Lcom/amazon/xray/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_4
    move-exception p0

    .line 55
    :goto_4
    invoke-static {v0}, Lcom/amazon/xray/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 56
    invoke-static {v2}, Lcom/amazon/xray/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 57
    throw p0
.end method
