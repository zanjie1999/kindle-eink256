.class public Lcom/amazon/kindle/socialsharing/util/FileHelper;
.super Ljava/lang/Object;
.source "FileHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocialSharing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/amazon/kindle/socialsharing/util/FileHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/socialsharing/util/FileHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 45
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 46
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 48
    :cond_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 49
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    const-wide/16 v5, 0x0

    .line 50
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    move-object v3, v1

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    .line 61
    :try_start_2
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 64
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 67
    :goto_1
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_2
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    move-object v9, v1

    move-object v1, p0

    move-object p0, p1

    move-object p1, v9

    goto :goto_b

    :catch_1
    move-exception p1

    move-object v9, v1

    move-object v1, p0

    move-object p0, p1

    move-object p1, v9

    goto :goto_3

    :catch_2
    move-exception p1

    move-object v9, v1

    move-object v1, p0

    move-object p0, p1

    move-object p1, v9

    goto :goto_7

    :catchall_1
    move-exception p0

    move-object p1, v1

    goto :goto_b

    :catch_3
    move-exception p0

    move-object p1, v1

    .line 56
    :goto_3
    :try_start_3
    sget-object v2, Lcom/amazon/kindle/socialsharing/util/FileHelper;->TAG:Ljava/lang/String;

    const-string v3, "Error while copying files"

    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_3

    .line 61
    :try_start_4
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_4

    :catch_4
    move-exception p0

    goto :goto_5

    :cond_3
    :goto_4
    if-eqz p1, :cond_4

    .line 64
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_6

    .line 67
    :goto_5
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_6
    return v0

    :catch_5
    move-exception p0

    move-object p1, v1

    .line 53
    :goto_7
    :try_start_5
    sget-object v2, Lcom/amazon/kindle/socialsharing/util/FileHelper;->TAG:Ljava/lang/String;

    const-string v3, "Cannot find file when copying"

    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_5

    .line 61
    :try_start_6
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_8

    :catch_6
    move-exception p0

    goto :goto_9

    :cond_5
    :goto_8
    if-eqz p1, :cond_6

    .line 64
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_a

    .line 67
    :goto_9
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_a
    return v0

    :catchall_2
    move-exception p0

    :goto_b
    if-eqz v1, :cond_7

    .line 61
    :try_start_7
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_c

    :catch_7
    move-exception p1

    goto :goto_d

    :cond_7
    :goto_c
    if-eqz p1, :cond_8

    .line 64
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_e

    .line 67
    :goto_d
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 69
    :cond_8
    :goto_e
    throw p0
.end method

.method public static deleteFile(Ljava/io/File;)Z
    .locals 4

    const/4 v0, 0x0

    .line 80
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    sget-object p0, Lcom/amazon/kindle/socialsharing/util/FileHelper;->TAG:Ljava/lang/String;

    const-string v1, "no file to be deleted"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 84
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    .line 87
    :cond_1
    sget-object v1, Lcom/amazon/kindle/socialsharing/util/FileHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File is not deleted at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p0

    .line 92
    sget-object v1, Lcom/amazon/kindle/socialsharing/util/FileHelper;->TAG:Ljava/lang/String;

    const-string v2, "Error happened while deleting file"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static isExternalStorageWritable()Z
    .locals 2

    .line 99
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    .line 100
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
