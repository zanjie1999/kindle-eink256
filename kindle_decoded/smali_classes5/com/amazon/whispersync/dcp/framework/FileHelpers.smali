.class public final Lcom/amazon/whispersync/dcp/framework/FileHelpers;
.super Ljava/lang/Object;
.source "FileHelpers.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.whispersync.dcp.framework.FileHelpers"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/FileHelpers;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bestEffortDelete(Ljava/io/File;)V
    .locals 3

    .line 227
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/FileHelpers;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error deleting file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static deleteFileFromMediaProvider(Landroid/content/Context;Ljava/io/File;)Z
    .locals 5

    const/4 v0, 0x0

    .line 186
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "media"

    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object p0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "external"

    .line 192
    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "_data = ?"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v0

    invoke-virtual {p0, v1, v2, v4}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception p0

    .line 199
    sget-object p1, Lcom/amazon/whispersync/dcp/framework/FileHelpers;->TAG:Ljava/lang/String;

    const-string v1, "Failed to delete file from media provider"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static fileFromUri(Landroid/net/Uri;)Ljava/io/File;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 255
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    return-object p0

    :catch_0
    move-exception p0

    .line 267
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 257
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static fileNameFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 274
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fileNameWithoutExtension(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 239
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    .line 240
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-object p0

    :cond_1
    const/4 v1, 0x0

    .line 245
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSharedPrefsFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string/jumbo p1, "shared_prefs/%s.xml"

    .line 34
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 36
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getUniqueFileName(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 279
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 284
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 p0, 0x0

    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, p0

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v1, 0x2

    aput-object p2, v3, v1

    const-string v1, "%s%s%s"

    .line 290
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 291
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return-object v1

    :cond_0
    add-int/2addr v2, v4

    new-array v1, v4, [Ljava/lang/Object;

    .line 297
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, p0

    const-string v3, "-%d"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 281
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static moveFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 4

    .line 73
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 91
    :cond_1
    :try_start_0
    invoke-static {p0, p1}, Lcom/amazon/whispersync/org/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 93
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_2

    .line 96
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/FileHelpers;->TAG:Ljava/lang/String;

    const-string v3, "Failed to delete source file %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return p1

    :catch_0
    move-exception p0

    .line 102
    sget-object p1, Lcom/amazon/whispersync/dcp/framework/FileHelpers;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Move failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 75
    :cond_3
    :goto_0
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/FileHelpers;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v1

    const-string p0, "Either %s doesn\'t exist, or %s does."

    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static readAll(Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Failed to close file: %s"

    .line 42
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 46
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/amazon/whispersync/dcp/framework/FileHelpers;->readAll(Ljava/io/FileReader;J)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 56
    sget-object v5, Lcom/amazon/whispersync/dcp/framework/FileHelpers;->TAG:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v4

    :catchall_0
    move-exception v4

    .line 52
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 56
    sget-object v5, Lcom/amazon/whispersync/dcp/framework/FileHelpers;->TAG:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    :goto_1
    throw v4
.end method

.method public static readAll(Ljava/io/FileReader;J)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    long-to-int p2, p1

    .line 65
    invoke-static {p2}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object p1

    .line 66
    invoke-virtual {p0, p1}, Ljava/io/FileReader;->read(Ljava/nio/CharBuffer;)I

    .line 68
    new-instance p0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static recursiveDelete(Ljava/io/File;)Z
    .locals 4

    .line 207
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/FileHelpers;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Recursively deleting: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/FileHelpers$3;

    invoke-direct {v0}, Lcom/amazon/whispersync/dcp/framework/FileHelpers$3;-><init>()V

    invoke-static {p0, v0}, Lcom/amazon/whispersync/dcp/framework/FileHelpers;->recursivelyIterateOverFiles(Ljava/io/File;Lcom/amazon/whispersync/dcp/framework/Task;)Z

    move-result p0

    return p0
.end method

.method public static recursiveDeleteFromMediaProvider(Landroid/content/Context;Ljava/io/File;)Z
    .locals 1

    .line 132
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/FileHelpers$2;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/dcp/framework/FileHelpers$2;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {p1, v0}, Lcom/amazon/whispersync/dcp/framework/FileHelpers;->recursivelyIterateOverFiles(Ljava/io/File;Lcom/amazon/whispersync/dcp/framework/Task;)Z

    move-result p0

    return p0
.end method

.method public static recursiveLogContents(Ljava/io/File;)V
    .locals 5

    .line 109
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/FileHelpers;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Logging contents of: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/FileHelpers$1;

    invoke-direct {v0}, Lcom/amazon/whispersync/dcp/framework/FileHelpers$1;-><init>()V

    invoke-static {p0, v0}, Lcom/amazon/whispersync/dcp/framework/FileHelpers;->recursivelyIterateOverFiles(Ljava/io/File;Lcom/amazon/whispersync/dcp/framework/Task;)Z

    .line 127
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/FileHelpers;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v4

    const-string p0, "Done logging contents of: %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static recursivelyIterateOverFiles(Ljava/io/File;Lcom/amazon/whispersync/dcp/framework/Task;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/amazon/whispersync/dcp/framework/Task<",
            "Ljava/lang/Boolean;",
            "Ljava/io/File;",
            ">;)Z"
        }
    .end annotation

    .line 153
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 155
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 158
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/FileHelpers;->TAG:Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "Failed to list files from %s"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 162
    :cond_0
    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v6, v0, v4

    .line 164
    invoke-static {v6, p1}, Lcom/amazon/whispersync/dcp/framework/FileHelpers;->recursivelyIterateOverFiles(Ljava/io/File;Lcom/amazon/whispersync/dcp/framework/Task;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 166
    sget-object v5, Lcom/amazon/whispersync/dcp/framework/FileHelpers;->TAG:Ljava/lang/String;

    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v6

    aput-object v6, v7, v2

    const-string v6, "Failed to execute task on file: %s"

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v1, v5

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 175
    invoke-interface {p1, p0}, Lcom/amazon/whispersync/dcp/framework/Task;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_4
    return v1
.end method
