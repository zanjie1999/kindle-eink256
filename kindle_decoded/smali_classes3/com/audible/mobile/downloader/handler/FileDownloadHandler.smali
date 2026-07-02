.class public Lcom/audible/mobile/downloader/handler/FileDownloadHandler;
.super Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;
.source "FileDownloadHandler.java"


# static fields
.field protected static final LOGGER:Lorg/slf4j/Logger;

.field private static final TEMPORARY_DOWNLOAD_SUFFIX:Ljava/lang/String; = ".partial"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected downloadFailureErrorMessage:Ljava/lang/String;

.field protected downloadFailureErrorValue:I

.field private fos:Ljava/io/OutputStream;

.field private final mFile:Ljava/io/File;

.field protected final mResumable:Z

.field private final temporaryLocation:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Ljava/io/File;Ljava/io/File;Z)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;)V

    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->downloadFailureErrorMessage:Ljava/lang/String;

    const/4 p1, 0x0

    .line 56
    iput p1, p0, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->downloadFailureErrorValue:I

    const-string p1, "destination cannot be null."

    .line 95
    invoke-static {p2, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "temporaryLocation cannot be null."

    .line 96
    invoke-static {p3, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    iput-object p2, p0, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->mFile:Ljava/io/File;

    .line 98
    iput-boolean p4, p0, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->mResumable:Z

    .line 99
    iput-object p3, p0, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->temporaryLocation:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Ljava/io/File;Z)V
    .locals 1

    .line 80
    invoke-static {p2}, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->createTemporaryLocation(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Ljava/io/File;Ljava/io/File;Z)V

    return-void
.end method

.method private static createTemporaryLocation(Ljava/io/File;)Ljava/io/File;
    .locals 2

    .line 104
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ".partial"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private setup(Ljava/io/File;)Z
    .locals 3

    .line 157
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 158
    iget-boolean v0, p0, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->mResumable:Z

    if-nez v0, :cond_0

    .line 159
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_3

    .line 160
    sget-object v0, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "File at {} cannot be deleted"

    invoke-interface {v0, v2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    return v1

    .line 163
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_3

    .line 164
    sget-object v0, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "File at {} cannot be written to"

    invoke-interface {v0, v2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    return v1

    .line 168
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    .line 169
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 170
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_2

    .line 171
    sget-object v0, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "Cannot mkdirs on {}"

    invoke-interface {v0, v2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    return v1

    .line 175
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_3

    .line 176
    sget-object v0, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "Cannot write to {}"

    invoke-interface {v0, v2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method protected final closeAndCleanUp(Z)V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->fos:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/audible/mobile/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    .line 274
    iput-object v0, p0, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->fos:Ljava/io/OutputStream;

    if-eqz p1, :cond_1

    .line 276
    iget-object p1, p0, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->temporaryLocation:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->temporaryLocation:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_0

    .line 277
    sget-object p1, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v0, "Could not delete temporary file when cleaning up"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 279
    :cond_0
    iget-object p1, p0, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->mFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->mFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_1

    .line 280
    sget-object p1, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v0, "Could not delete file when cleaning up"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public getCompletedFile()Ljava/io/File;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->mFile:Ljava/io/File;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected getFileOutputStream()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 221
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->temporaryLocation:Ljava/io/File;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    return-object v0
.end method

.method public getInProgressOrCompletedFile()Ljava/io/File;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->mFile:Ljava/io/File;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->temporaryLocation:Ljava/io/File;

    :goto_0
    return-object v0
.end method

.method public getStartOffset()J
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->temporaryLocation:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method getStorageBytesAvailable()J
    .locals 5

    .line 262
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    iget-object v1, p0, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->temporaryLocation:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v3, v0

    mul-long v1, v1, v3

    return-wide v1

    .line 266
    :catch_0
    sget-object v0, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Could not check fs size for file"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public onBeforeContentReceived()Z
    .locals 4

    .line 196
    invoke-super {p0}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->onBeforeContentReceived()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->fos:Ljava/io/OutputStream;

    if-nez v0, :cond_1

    .line 202
    :try_start_0
    invoke-virtual {p0}, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->getFileOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->fos:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 205
    sget-object v2, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "Exception creating output stream after receiving headers"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    sget v0, Lcom/audible/mobile/networking/R$string;->could_not_write_to_storage_check_your_storage_media:I

    iput v0, p0, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->downloadFailureErrorValue:I

    :cond_1
    return v1
.end method

.method public onBegin()Z
    .locals 3

    .line 135
    invoke-super {p0}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->onBegin()Z

    move-result v0

    .line 139
    iget-object v1, p0, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->temporaryLocation:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->setup(Ljava/io/File;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 140
    sget-object v0, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Failed to properly set up temporary file.  Returning false from onBegin."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return v2

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->mFile:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->setup(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 145
    sget-object v0, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Failed to properly set up final file.  Returning false from onBegin."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return v2

    .line 150
    :cond_1
    invoke-virtual {p0, v2}, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->closeAndCleanUp(Z)V

    return v0
.end method

.method public onCancelled()V
    .locals 1

    .line 289
    invoke-super {p0}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->onCancelled()V

    const/4 v0, 0x1

    .line 290
    invoke-virtual {p0, v0}, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->closeAndCleanUp(Z)V

    return-void
.end method

.method public onContentReceived([BI)Z
    .locals 4

    .line 227
    invoke-super {p0, p1, p2}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->onContentReceived([BI)Z

    move-result v0

    .line 230
    iget-object v1, p0, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->fos:Ljava/io/OutputStream;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 236
    :cond_0
    :try_start_0
    invoke-virtual {v1, p1, v2, p2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    .line 239
    sget-object v0, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Error writing content to file"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    int-to-long p1, p2

    .line 242
    invoke-virtual {p0}, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->getStorageBytesAvailable()J

    move-result-wide v0

    cmp-long v3, p1, v0

    if-lez v3, :cond_1

    .line 243
    sget p1, Lcom/audible/mobile/networking/R$string;->no_free_space_on_external_storage:I

    iput p1, p0, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->downloadFailureErrorValue:I

    goto :goto_0

    .line 245
    :cond_1
    sget p1, Lcom/audible/mobile/networking/R$string;->could_not_write_to_storage_check_your_storage_media:I

    iput p1, p0, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->downloadFailureErrorValue:I

    .line 248
    :goto_0
    iget-boolean p1, p0, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->mResumable:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->closeAndCleanUp(Z)V

    return v2
.end method

.method public onError(Lcom/audible/mobile/downloader/NetworkError;Lcom/audible/mobile/downloader/NetworkErrorException;)V
    .locals 1

    .line 314
    invoke-super {p0, p1, p2}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->onError(Lcom/audible/mobile/downloader/NetworkError;Lcom/audible/mobile/downloader/NetworkErrorException;)V

    .line 315
    sget-object p1, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v0, "Unable to download content"

    invoke-interface {p1, v0, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p2, :cond_0

    .line 316
    invoke-virtual {p2}, Lcom/audible/mobile/downloader/NetworkErrorException;->getUserErrorMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 317
    invoke-virtual {p2}, Lcom/audible/mobile/downloader/NetworkErrorException;->getUserErrorMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->downloadFailureErrorMessage:Ljava/lang/String;

    .line 319
    :cond_0
    iget-boolean p1, p0, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->mResumable:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->closeAndCleanUp(Z)V

    return-void
.end method

.method public onFinished()V
    .locals 5

    .line 296
    invoke-super {p0}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->onFinished()V

    .line 298
    iget-object v0, p0, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->fos:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/audible/mobile/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 301
    iget-object v0, p0, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->temporaryLocation:Ljava/io/File;

    iget-object v2, p0, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->mFile:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 302
    :goto_1
    invoke-virtual {p0, v1}, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->closeAndCleanUp(Z)V

    if-nez v0, :cond_2

    .line 307
    sget-object v0, Lcom/audible/mobile/downloader/NetworkError;->NONE:Lcom/audible/mobile/downloader/NetworkError;

    new-instance v1, Lcom/audible/mobile/downloader/NetworkErrorException;

    sget-object v2, Lcom/audible/mobile/downloader/NetworkError;->NONE:Lcom/audible/mobile/downloader/NetworkError;

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unable to move temporary file to proper location."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/audible/mobile/downloader/NetworkErrorException;-><init>(Lcom/audible/mobile/downloader/NetworkError;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0, v1}, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->onError(Lcom/audible/mobile/downloader/NetworkError;Lcom/audible/mobile/downloader/NetworkErrorException;)V

    :cond_2
    return-void
.end method

.method public onInterrupt()V
    .locals 1

    .line 325
    invoke-super {p0}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->onInterrupt()V

    .line 326
    iget-boolean v0, p0, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->mResumable:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->closeAndCleanUp(Z)V

    return-void
.end method

.method public onRemoved()V
    .locals 1

    .line 332
    invoke-super {p0}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->onRemoved()V

    .line 333
    iget-boolean v0, p0, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->mResumable:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->closeAndCleanUp(Z)V

    return-void
.end method
