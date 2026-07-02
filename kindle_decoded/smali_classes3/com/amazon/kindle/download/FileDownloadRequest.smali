.class public abstract Lcom/amazon/kindle/download/FileDownloadRequest;
.super Lcom/amazon/kindle/webservices/BaseWebRequest;
.source "FileDownloadRequest.kt"

# interfaces
.implements Lcom/amazon/kindle/services/download/IDownloadRequest;


# instance fields
.field private downloadPath:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private isCompleted:Z

.field protected final krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

.field private final proxyTracker:Lcom/amazon/kindle/download/ProxyStatusAndProgressTracker;

.field private final tempFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "downloadPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/amazon/kindle/download/FileDownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl;)V
    .locals 1

    const-string v0, "downloadPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p3}, Lcom/amazon/kindle/webservices/BaseWebRequest;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kindle/download/FileDownloadRequest;->downloadPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kindle/download/FileDownloadRequest;->fileName:Ljava/lang/String;

    .line 36
    new-instance p1, Lcom/amazon/kindle/download/ProxyStatusAndProgressTracker;

    invoke-direct {p1}, Lcom/amazon/kindle/download/ProxyStatusAndProgressTracker;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/download/FileDownloadRequest;->proxyTracker:Lcom/amazon/kindle/download/ProxyStatusAndProgressTracker;

    .line 38
    invoke-static {}, Lcom/amazon/kindle/download/DownloadDiscoveryEntryPoints;->getInstance()Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;

    move-result-object p1

    const-string p2, "DownloadDiscoveryEntryPoints.getInstance()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;->getKrlForDownloadFacade()Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    move-result-object p1

    const-string p2, "DownloadDiscoveryEntryPo\u2026ce().krlForDownloadFacade"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kindle/download/FileDownloadRequest;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    const/4 p1, 0x3

    .line 41
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setRetries(I)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 42
    invoke-virtual {p0, p4}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setResponseHandler(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 43
    iget-object p1, p0, Lcom/amazon/kindle/download/FileDownloadRequest;->downloadPath:Ljava/lang/String;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    const-string p3, "File.separator"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    const/4 p4, 0x2

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, p4, v0}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 44
    iget-object p1, p0, Lcom/amazon/kindle/download/FileDownloadRequest;->downloadPath:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/download/FileDownloadRequest;->downloadPath:Ljava/lang/String;

    .line 46
    :cond_0
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/amazon/kindle/download/FileDownloadRequest;->downloadPath:Ljava/lang/String;

    iget-object p3, p0, Lcom/amazon/kindle/download/FileDownloadRequest;->fileName:Ljava/lang/String;

    invoke-static {p3}, Lcom/amazon/kindle/io/FileSystemHelper;->addTemporaryExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kindle/download/FileDownloadRequest;->tempFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public getDownloadPath()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/amazon/kindle/download/FileDownloadRequest;->downloadPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getDownloadPath$com_amazon_kindle_dm()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/kindle/download/FileDownloadRequest;->downloadPath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/amazon/kindle/download/FileDownloadRequest;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getIsCompleted()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/amazon/kindle/download/FileDownloadRequest;->isCompleted:Z

    return v0
.end method

.method public getPathAndQuery()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final getStatusAndProgressTracker()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;

    .line 104
    iget-object v1, p0, Lcom/amazon/kindle/download/FileDownloadRequest;->proxyTracker:Lcom/amazon/kindle/download/ProxyStatusAndProgressTracker;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final getTempFile()Ljava/io/File;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/amazon/kindle/download/FileDownloadRequest;->tempFile:Ljava/io/File;

    return-object v0
.end method

.method public initalizeTempFilePath()Ljava/io/File;
    .locals 3

    .line 56
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amazon/kindle/download/FileDownloadRequest;->downloadPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-static {}, Lcom/amazon/kindle/download/FileDownloadRequestKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create directory for download at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/download/FileDownloadRequest;->downloadPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->FILE_SYSTEM_WRITE_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/download/FileDownloadRequest;->tempFile:Ljava/io/File;

    return-object v0
.end method

.method public onBeforeExecute()V
    .locals 3

    .line 50
    invoke-super {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->onBeforeExecute()V

    .line 51
    invoke-virtual {p0}, Lcom/amazon/kindle/download/FileDownloadRequest;->initalizeTempFilePath()Ljava/io/File;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getResponseHandler()Lcom/amazon/kindle/webservices/IResponseHandler;

    move-result-object v1

    instance-of v2, v1, Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl;

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    check-cast v1, Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "tempFile.absolutePath"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/download/ResponseHandlerFileSystemImpl;->setDownloadFile(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected onCancel()V
    .locals 3

    .line 82
    invoke-super {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->onCancel()V

    .line 83
    invoke-static {}, Lcom/amazon/kindle/download/FileDownloadRequestKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCancel: Deleting file for asset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/amazon/kindle/services/download/IDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v1

    const-string v2, "bookAsset"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/download/FileDownloadRequest;->tempFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/amazon/kindle/download/FileDownloadRequest;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    iget-object v1, p0, Lcom/amazon/kindle/download/FileDownloadRequest;->tempFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->deleteFile(Ljava/lang/String;)Z

    return-void
.end method

.method public final registerStatusTracker(Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;)Lcom/amazon/kindle/webservices/IWebRequest;
    .locals 1

    if-eqz p1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/amazon/kindle/download/FileDownloadRequest;->proxyTracker:Lcom/amazon/kindle/download/ProxyStatusAndProgressTracker;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/amazon/kindle/download/FileDownloadRequest;->proxyTracker:Lcom/amazon/kindle/download/ProxyStatusAndProgressTracker;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/download/ProxyStatusAndProgressTracker;->registerTracker(Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;)V

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/download/FileDownloadRequest;->proxyTracker:Lcom/amazon/kindle/download/ProxyStatusAndProgressTracker;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 96
    invoke-static {}, Lcom/amazon/kindle/download/FileDownloadRequestKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cannot register the proxy status tracker to itself"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/download/FileDownloadRequestKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cannot register a null status tracker"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method protected final renameTempFile(Ljava/io/File;)V
    .locals 2

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/amazon/kindle/download/FileDownloadRequest;->tempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    invoke-static {}, Lcom/amazon/kindle/download/FileDownloadRequestKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot rename the temp file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/download/FileDownloadRequest;->tempFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " because it does not exist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 114
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/download/FileDownloadRequestKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Renaming temp file from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/download/FileDownloadRequest;->tempFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/amazon/kindle/download/FileDownloadRequest;->tempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/amazon/kindle/download/FileDownloadRequest;->tempFile:Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_1
    return-void
.end method

.method public setIsCompleted(Z)V
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/amazon/kindle/download/FileDownloadRequest;->isCompleted:Z

    return-void
.end method
