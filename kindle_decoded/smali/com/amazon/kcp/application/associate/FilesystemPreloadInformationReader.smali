.class Lcom/amazon/kcp/application/associate/FilesystemPreloadInformationReader;
.super Ljava/lang/Object;
.source "FilesystemPreloadInformationReader.java"

# interfaces
.implements Lcom/amazon/kcp/application/associate/PreloadInformationReader;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/amazon/kcp/application/associate/FilesystemPreloadInformationReader;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/associate/FilesystemPreloadInformationReader;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amazon/kcp/application/associate/FilesystemPreloadInformationReader;->path:Ljava/lang/String;

    return-void
.end method

.method private static getInputStreamForFile(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getPreloadInformation()Lcom/amazon/kcp/application/associate/PreloadInformationResult;
    .locals 8

    .line 44
    new-instance v0, Lcom/amazon/kcp/application/associate/PreloadInformationResult;

    invoke-direct {v0}, Lcom/amazon/kcp/application/associate/PreloadInformationResult;-><init>()V

    const/4 v1, 0x0

    .line 47
    :try_start_0
    iget-object v2, p0, Lcom/amazon/kcp/application/associate/FilesystemPreloadInformationReader;->path:Ljava/lang/String;

    invoke-static {v2}, Lcom/amazon/kcp/application/associate/FilesystemPreloadInformationReader;->getInputStreamForFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 48
    invoke-static {v1}, Lcom/amazon/kcp/application/associate/InputStreamPreloadInformationReader;->read(Ljava/io/InputStream;)Lcom/amazon/kcp/application/associate/PreloadInformationResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :goto_0
    invoke-static {v1}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 50
    :try_start_1
    sget-object v3, Lcom/amazon/kcp/application/associate/FilesystemPreloadInformationReader;->TAG:Ljava/lang/String;

    const-string v4, "Unable to read associates tag file %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/amazon/kcp/application/associate/FilesystemPreloadInformationReader;->path:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-object v0

    .line 52
    :goto_2
    invoke-static {v1}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 53
    throw v0
.end method

.method public getPreloadType()Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .line 35
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amazon/kcp/application/associate/FilesystemPreloadInformationReader;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    sget-object v0, Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;->FILESYSTEM:Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;

    return-object v0

    .line 38
    :cond_0
    sget-object v0, Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;->NONE:Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;

    return-object v0
.end method

.method public isValid()Z
    .locals 2

    .line 59
    invoke-virtual {p0}, Lcom/amazon/kcp/application/associate/FilesystemPreloadInformationReader;->getPreloadType()Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;->FILESYSTEM:Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
