.class public final Lcom/audible/mobile/download/networking/CatalogFileSystemDownloadHandler;
.super Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;
.source "CatalogFileSystemDownloadHandler.java"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private final context:Landroid/content/Context;

.field private final fileType:Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

.field private final location:Ljava/io/File;

.field private final request:Lcom/audible/mobile/download/Request;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/mobile/download/networking/CatalogFileSystemDownloadHandler;

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/audible/mobile/download/networking/CatalogFileSystemDownloadHandler;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;Lcom/audible/mobile/download/Request;Ljava/io/File;Lcom/audible/mobile/downloader/interfaces/DownloadHandler;)V
    .locals 0

    .line 43
    invoke-direct {p0, p5}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;)V

    .line 44
    iput-object p1, p0, Lcom/audible/mobile/download/networking/CatalogFileSystemDownloadHandler;->context:Landroid/content/Context;

    .line 45
    iput-object p3, p0, Lcom/audible/mobile/download/networking/CatalogFileSystemDownloadHandler;->request:Lcom/audible/mobile/download/Request;

    .line 46
    iput-object p4, p0, Lcom/audible/mobile/download/networking/CatalogFileSystemDownloadHandler;->location:Ljava/io/File;

    .line 47
    iput-object p2, p0, Lcom/audible/mobile/download/networking/CatalogFileSystemDownloadHandler;->fileType:Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 5

    .line 53
    invoke-super {p0}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->onFinished()V

    .line 55
    iget-object v0, p0, Lcom/audible/mobile/download/networking/CatalogFileSystemDownloadHandler;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/mobile/download/networking/CatalogFileSystemDownloadHandler;->context:Landroid/content/Context;

    .line 56
    invoke-static {v1}, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$CatalogFiles;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    if-nez v0, :cond_0

    .line 59
    sget-object v0, Lcom/audible/mobile/download/networking/CatalogFileSystemDownloadHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Application has no CatalogFileSystem ContentProvider registered."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void

    .line 63
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 64
    iget-object v2, p0, Lcom/audible/mobile/download/networking/CatalogFileSystemDownloadHandler;->request:Lcom/audible/mobile/download/Request;

    invoke-virtual {v2}, Lcom/audible/mobile/download/Request;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    invoke-interface {v2}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ASIN"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v2, p0, Lcom/audible/mobile/download/networking/CatalogFileSystemDownloadHandler;->location:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FILE_LOCATION_URI"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v2, p0, Lcom/audible/mobile/download/networking/CatalogFileSystemDownloadHandler;->fileType:Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FILE_TYPE"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v2, p0, Lcom/audible/mobile/download/networking/CatalogFileSystemDownloadHandler;->fileType:Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    sget-object v3, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;->COVER_ART:Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    if-eq v2, v3, :cond_1

    .line 69
    iget-object v2, p0, Lcom/audible/mobile/download/networking/CatalogFileSystemDownloadHandler;->request:Lcom/audible/mobile/download/Request;

    invoke-virtual {v2}, Lcom/audible/mobile/download/Request;->getOptionalPayload()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FILE_SUB_TYPE"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/audible/mobile/download/networking/CatalogFileSystemDownloadHandler;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$CatalogFiles;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :goto_0
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 75
    :try_start_1
    sget-object v2, Lcom/audible/mobile/download/networking/CatalogFileSystemDownloadHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "Unable to insert data for ASIN {} into catalog file system."

    iget-object v4, p0, Lcom/audible/mobile/download/networking/CatalogFileSystemDownloadHandler;->request:Lcom/audible/mobile/download/Request;

    invoke-virtual {v4}, Lcom/audible/mobile/download/Request;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 77
    :goto_2
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 78
    throw v1
.end method
