.class public Lcom/amazon/kcp/font/FontExtractor;
.super Lcom/amazon/foundation/internal/CAsynchronousCallback;
.source "FontExtractor.java"


# static fields
.field private static final FONT_PATH_PLACEHOLDER:Ljava/lang/String; = "%%PATH_TO_FONT_FILES%%"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final pathToDownload:Ljava/lang/String;

.field private final task:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final zipFileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/amazon/kcp/font/FontExtractor;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/font/FontExtractor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/callback/ICallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Lcom/amazon/foundation/internal/CAsynchronousCallback;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/amazon/kcp/font/FontExtractor;->pathToDownload:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/amazon/kcp/font/FontExtractor;->zipFileName:Ljava/lang/String;

    .line 52
    new-instance p1, Lcom/amazon/kcp/font/FontExtractor$1;

    invoke-direct {p1, p0, p3}, Lcom/amazon/kcp/font/FontExtractor$1;-><init>(Lcom/amazon/kcp/font/FontExtractor;Lcom/amazon/kindle/callback/ICallback;)V

    iput-object p1, p0, Lcom/amazon/kcp/font/FontExtractor;->task:Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/font/FontExtractor;Z)V
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/amazon/foundation/internal/CAsynchronousCallback;->setError(Z)V

    return-void
.end method

.method public static extractFolder(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const-string/jumbo v0, "testlog Font file unzip failed: "

    const-string/jumbo v1, "testlog Failed to close font zip file: "

    .line 80
    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_6

    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 82
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    .line 88
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipFile;

    const/4 v5, 0x5

    invoke-direct {v4, v2, v5}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 91
    :try_start_1
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 94
    :try_start_2
    invoke-virtual {v4, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 95
    :try_start_3
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    .line 97
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 100
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_1
    const-string/jumbo v8, "system_fonts.xml"

    .line 103
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 105
    invoke-static {v6, v7, p0}, Lcom/amazon/kcp/font/FontExtractor;->generateFontConfigFile(Ljava/io/InputStream;Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    .line 108
    :cond_2
    invoke-static {v6, v7}, Lcom/amazon/kindle/io/IOUtils;->writeInToFile(Ljava/io/InputStream;Ljava/io/File;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    if-eqz v6, :cond_0

    .line 112
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object p1, v6

    goto :goto_2

    :catchall_1
    move-exception p0

    :goto_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 114
    :cond_3
    throw p0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_4
    const/4 p0, 0x1

    .line 126
    :try_start_5
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    const/4 v3, 0x1

    goto/16 :goto_8

    :catch_0
    move-exception p0

    .line 128
    sget-object p1, Lcom/amazon/kcp/font/FontExtractor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5

    :catchall_2
    move-exception p0

    move-object p1, v4

    goto/16 :goto_6

    :catch_1
    move-exception p0

    move-object p1, v4

    goto :goto_3

    :catch_2
    move-exception p0

    move-object p1, v4

    goto :goto_4

    :catchall_3
    move-exception p0

    goto :goto_6

    :catch_3
    move-exception p0

    .line 122
    :goto_3
    :try_start_6
    sget-object v2, Lcom/amazon/kcp/font/FontExtractor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz p1, :cond_6

    .line 126
    :try_start_7
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_8

    :catch_4
    move-exception p0

    .line 128
    sget-object p1, Lcom/amazon/kcp/font/FontExtractor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5

    :catch_5
    move-exception p0

    .line 120
    :goto_4
    :try_start_8
    sget-object v2, Lcom/amazon/kcp/font/FontExtractor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz p1, :cond_6

    .line 126
    :try_start_9
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_8

    :catch_6
    move-exception p0

    .line 128
    sget-object p1, Lcom/amazon/kcp/font/FontExtractor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :goto_6
    if-eqz p1, :cond_5

    .line 126
    :try_start_a
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_7

    :catch_7
    move-exception p1

    .line 128
    sget-object v0, Lcom/amazon/kcp/font/FontExtractor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    :cond_5
    :goto_7
    throw p0

    :cond_6
    :goto_8
    return v3
.end method

.method private static generateFontConfigFile(Ljava/io/InputStream;Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 151
    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "%%PATH_TO_FONT_FILES%%"

    invoke-virtual {p0, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 165
    invoke-static {p1, p0}, Lcom/amazon/kindle/io/IOUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .line 175
    iget-object v0, p0, Lcom/amazon/kcp/font/FontExtractor;->task:Landroid/os/AsyncTask;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kcp/font/FontExtractor;->pathToDownload:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/amazon/kcp/font/FontExtractor;->zipFileName:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public kill()V
    .locals 0

    .line 170
    invoke-virtual {p0}, Lcom/amazon/foundation/internal/CAsynchronousCallback;->notifyKillEvent()V

    return-void
.end method
