.class public Lcom/amazon/kindle/tutorial/TutorialConfigLoader;
.super Ljava/lang/Object;
.source "TutorialConfigLoader.java"


# static fields
.field private static final ASSET_FILE_NAME:Ljava/lang/String; = "tutorials.json"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lcom/amazon/kindle/tutorial/TutorialConfigLoader;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/tutorial/TutorialConfigLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTutorialConfiguration(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/tutorial/model/TutorialConfig;",
            ">;"
        }
    .end annotation

    .line 39
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    const-string/jumbo v1, "tutorials.json"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 40
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 42
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 43
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 46
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v3

    .line 48
    :try_start_2
    sget-object v4, Lcom/amazon/kindle/tutorial/TutorialConfigLoader;->TAG:Ljava/lang/String;

    const-string v5, "Error reading JSON stream from filesystem"

    invoke-static {v4, v5, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 53
    throw p0

    :cond_1
    :goto_1
    if-nez v2, :cond_2

    .line 58
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 60
    sget-object v0, Lcom/amazon/kindle/tutorial/TutorialConfigLoader;->TAG:Ljava/lang/String;

    const-string v1, "Error reading JSON stream from assets"

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    .line 66
    invoke-static {v2}, Lcom/amazon/kindle/tutorial/ConfigReader;->read(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object p0

    .line 67
    invoke-static {v2}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_3

    .line 69
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_3
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 72
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Loaded tutorial config from file: %d tutorials configured."

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    return-object p0
.end method
