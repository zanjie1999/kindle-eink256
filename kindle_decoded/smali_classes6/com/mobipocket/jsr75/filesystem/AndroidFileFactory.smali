.class public Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory;
.super Ljava/lang/Object;
.source "AndroidFileFactory.java"

# interfaces
.implements Lcom/amazon/kindle/io/IFileConnectionFactory;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final createDirectoryLock:Ljava/lang/Object;


# instance fields
.field private final context:Landroid/content/Context;

.field private final pathDescriptor:Lcom/amazon/kindle/io/IPathDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory;->TAG:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory;->createDirectoryLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory;->context:Landroid/content/Context;

    .line 41
    invoke-static {}, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;->getInstance()Lcom/amazon/kcp/application/AndroidDeviceClassFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;->getPathDescriptor(Landroid/content/Context;)Lcom/amazon/kindle/io/IPathDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory;->pathDescriptor:Lcom/amazon/kindle/io/IPathDescriptor;

    .line 42
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 43
    invoke-virtual {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory;->createDirectories()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .line 26
    sget-object v0, Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory;->createDirectoryLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory;->createDirectoryForPath(Ljava/lang/String;)V

    return-void
.end method

.method private createDirectories([Ljava/lang/String;)V
    .locals 3

    .line 146
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 147
    invoke-virtual {p0, v2}, Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory;->createDirectory(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private createDirectoryForPath(Ljava/lang/String;)V
    .locals 3

    .line 116
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    sget-object v0, Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error creating directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 127
    sget-object v0, Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public avaliableSizeForPath(Ljava/lang/String;)J
    .locals 5

    .line 57
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result p1

    .line 63
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v1, p1

    int-to-long v3, v0

    mul-long v1, v1, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 59
    :try_start_1
    sget-object v0, Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v1, -0x1

    :goto_0
    return-wide v1

    .line 67
    :goto_1
    throw p1
.end method

.method protected createDirectories()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory;->pathDescriptor:Lcom/amazon/kindle/io/IPathDescriptor;

    invoke-interface {v0}, Lcom/amazon/kindle/io/IPathDescriptor;->getApplicationPaths()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory;->createDirectories([Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory;->pathDescriptor:Lcom/amazon/kindle/io/IPathDescriptor;

    invoke-interface {v0}, Lcom/amazon/kindle/io/IPathDescriptor;->getNonBookApplicationPaths()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory;->createDirectories([Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory;->pathDescriptor:Lcom/amazon/kindle/io/IPathDescriptor;

    invoke-interface {v0}, Lcom/amazon/kindle/io/IPathDescriptor;->getPersistentPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory;->createDirectory(Ljava/lang/String;)V

    return-void
.end method

.method protected createDirectory(Ljava/lang/String;)V
    .locals 2

    .line 100
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory$1;

    invoke-direct {v1, p0, p1}, Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory$1;-><init>(Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public getFileSeparator()C
    .locals 1

    .line 74
    sget-char v0, Ljava/io/File;->separatorChar:C

    return v0
.end method

.method public getPathDescriptor()Lcom/amazon/kindle/io/IPathDescriptor;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory;->pathDescriptor:Lcom/amazon/kindle/io/IPathDescriptor;

    return-object v0
.end method

.method public onFileSystemChangedEvent(Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor$FileSystemChangedEvent;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 48
    invoke-virtual {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory;->createDirectories()V

    return-void
.end method

.method public openFile(Ljava/lang/String;)Lcom/amazon/kindle/io/IFileConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/mobipocket/jsr75/filesystem/AndroidFile;

    invoke-direct {v0, p1}, Lcom/mobipocket/jsr75/filesystem/AndroidFile;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid filename: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
