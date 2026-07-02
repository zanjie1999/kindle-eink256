.class public final Lcom/amazon/kindle/utils/KindleDexClassLoader;
.super Ljava/lang/Object;
.source "KindleDexClassLoader.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static dexLoader:Ldalvik/system/DexClassLoader; = null

.field private static isSecondaryDexAvailable:Ljava/lang/Boolean; = null

.field private static final secondaryDex:Ljava/lang/String; = "secondary_dex.jar"

.field private static final secondaryDexAssetName:Ljava/lang/String; = "secondary_dex"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/amazon/kindle/utils/KindleDexClassLoader;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/utils/KindleDexClassLoader;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 39
    sput-object v0, Lcom/amazon/kindle/utils/KindleDexClassLoader;->dexLoader:Ldalvik/system/DexClassLoader;

    .line 40
    sput-object v0, Lcom/amazon/kindle/utils/KindleDexClassLoader;->isSecondaryDexAvailable:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cleanup(Ljava/io/File;Ljava/lang/String;)Z
    .locals 5

    .line 178
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 179
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    return v1

    .line 183
    :cond_0
    array-length v0, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p0, v2

    .line 184
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p0, 0x1

    return p0

    .line 187
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    .line 188
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private static copyDexFile(Ljava/io/File;Lcom/amazon/kcp/application/IAndroidApplicationController;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 208
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-interface {p1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getActiveContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string/jumbo v2, "secondary_dex"

    invoke-virtual {p1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 209
    :try_start_1
    new-instance p1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/high16 p0, 0x20000

    :try_start_2
    new-array v0, p0, [B

    :goto_0
    const/4 v2, 0x0

    .line 212
    invoke-virtual {v1, v0, v2, p0}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    if-lez v3, :cond_0

    .line 213
    invoke-virtual {p1, v0, v2, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 216
    :cond_0
    invoke-static {v1}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 217
    invoke-static {p1}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object p1, v0

    :goto_1
    move-object v0, v1

    goto :goto_2

    :catchall_2
    move-exception p0

    move-object p1, v0

    .line 216
    :goto_2
    invoke-static {v0}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 217
    invoke-static {p1}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 218
    throw p0
.end method

.method public static hasSecondaryDex()Z
    .locals 3

    .line 86
    :try_start_0
    invoke-static {}, Lcom/amazon/kindle/utils/KindleDexClassLoader;->prepareDex()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 88
    sget-object v1, Lcom/amazon/kindle/utils/KindleDexClassLoader;->TAG:Ljava/lang/String;

    const-string v2, "error checking secondary dex file"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public static instantiate(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 53
    invoke-static {p0}, Lcom/amazon/kindle/utils/KindleDexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 54
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs instantiate(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 73
    invoke-static {p0}, Lcom/amazon/kindle/utils/KindleDexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 74
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 76
    invoke-virtual {p0, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 78
    :cond_0
    new-instance p0, Ljava/lang/NoSuchMethodError;

    const-string p1, "matching constructor not found"

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 102
    invoke-static {}, Lcom/amazon/kindle/utils/KindleDexClassLoader;->hasSecondaryDex()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    :try_start_0
    sget-object v0, Lcom/amazon/kindle/utils/KindleDexClassLoader;->dexLoader:Ldalvik/system/DexClassLoader;

    invoke-virtual {v0, p0}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 110
    :catch_0
    :cond_0
    const-class v0, Lcom/amazon/kindle/utils/KindleDexClassLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 111
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method private static declared-synchronized prepareDex()Z
    .locals 9

    const-class v0, Lcom/amazon/kindle/utils/KindleDexClassLoader;

    monitor-enter v0

    .line 119
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/utils/KindleDexClassLoader;->dexLoader:Ldalvik/system/DexClassLoader;

    const/4 v2, 0x0

    if-nez v1, :cond_5

    sget-object v1, Lcom/amazon/kindle/utils/KindleDexClassLoader;->isSecondaryDexAvailable:Ljava/lang/Boolean;

    if-nez v1, :cond_5

    .line 122
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    .line 124
    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getActiveContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "dex"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    .line 126
    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getActiveContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "dexOut"

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    .line 128
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :try_start_1
    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getActiveContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/amazon/kindle/krl/R$raw;->secondary_dex:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v6

    .line 132
    :try_start_2
    sget-object v7, Lcom/amazon/kindle/utils/KindleDexClassLoader;->TAG:Ljava/lang/String;

    const-string v8, "failed to load secondary dex version file. Will use the application\'s version number"

    invoke-static {v7, v8, v6}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const-string/jumbo v6, "version"

    .line 134
    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1.0"

    .line 136
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v1, ""

    .line 137
    invoke-static {v3, v1}, Lcom/amazon/kindle/utils/KindleDexClassLoader;->cleanup(Ljava/io/File;Ljava/lang/String;)Z

    .line 138
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v1, Lcom/amazon/kindle/utils/KindleDexClassLoader;->isSecondaryDexAvailable:Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    monitor-exit v0

    return v2

    :cond_0
    if-nez v5, :cond_1

    .line 142
    :try_start_3
    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleApplicationController;->getInternalVersionNumber()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 144
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "secondary_dex.jar"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 145
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 146
    invoke-static {v3, v5}, Lcom/amazon/kindle/utils/KindleDexClassLoader;->cleanup(Ljava/io/File;Ljava/lang/String;)Z

    .line 148
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 149
    invoke-static {v4, v5}, Lcom/amazon/kindle/utils/KindleDexClassLoader;->cleanup(Ljava/io/File;Ljava/lang/String;)Z

    move-result v6

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    .line 151
    :goto_1
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v6, :cond_4

    .line 154
    :try_start_4
    invoke-static {v7, v1}, Lcom/amazon/kindle/utils/KindleDexClassLoader;->copyDexFile(Ljava/io/File;Lcom/amazon/kcp/application/IAndroidApplicationController;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v1

    .line 156
    :try_start_5
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v2, Lcom/amazon/kindle/utils/KindleDexClassLoader;->isSecondaryDexAvailable:Ljava/lang/Boolean;

    .line 157
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "error preparing the secondary dex file"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 162
    :cond_4
    :goto_2
    new-instance v1, Ldalvik/system/DexClassLoader;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 163
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 164
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v1, v3, v4, v5, v6}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v1, Lcom/amazon/kindle/utils/KindleDexClassLoader;->dexLoader:Ldalvik/system/DexClassLoader;

    .line 165
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v1, Lcom/amazon/kindle/utils/KindleDexClassLoader;->isSecondaryDexAvailable:Ljava/lang/Boolean;

    .line 167
    :cond_5
    sget-object v1, Lcom/amazon/kindle/utils/KindleDexClassLoader;->isSecondaryDexAvailable:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/amazon/kindle/utils/KindleDexClassLoader;->isSecondaryDexAvailable:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_6

    const/4 v2, 0x1

    :cond_6
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
