.class public interface abstract Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;
.super Ljava/lang/Object;
.source "IKRLForDownloadFacade.java"


# virtual methods
.method public abstract addContentMetadata(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addLocalContent(Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;
.end method

.method public abstract addLocalDownloadingContent(Ljava/lang/String;Lcom/amazon/kindle/model/content/ContentState;Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/content/ContentMetadata;
.end method

.method public abstract addOwnership(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract avaliableSizeForPath(Ljava/lang/String;)J
.end method

.method public abstract deleteFile(Ljava/lang/String;)Z
.end method

.method public abstract deleteItemLocally(Ljava/lang/String;Ljava/lang/String;ZZZZ)V
.end method

.method public abstract emitEarlyAnnotationsSidecarRequestWillNotCompleteEvent(Ljava/lang/String;)V
.end method

.method public abstract enablePaidWan()Z
.end method

.method public abstract enabledSharedBookDownload()Z
.end method

.method public abstract enforceDownloadLimitOnWan()Z
.end method

.method public abstract getActiveNetworkProperties()Lcom/amazon/kindle/network/NetworkProperties;
.end method

.method public abstract getAmazonLocaleCode()Ljava/lang/String;
.end method

.method public abstract getAppWanDownloadLimit()I
.end method

.method public abstract getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;
.end method

.method public abstract getAuthenticationToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;
.end method

.method public abstract getBookPageNumbers(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;
.end method

.method public abstract getBookPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;
.end method

.method public abstract getContentMetadata(Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;
.end method

.method public abstract getContentMetadata(Ljava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;
.end method

.method public abstract getContentOpenMetricsManager()Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getCoverImage(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;)Ljava/lang/String;
.end method

.method public abstract getDeviceSerialNumber()Ljava/lang/String;
.end method

.method public abstract getDownloadContentIncompatibleErrorMessage()Ljava/lang/String;
.end method

.method public abstract getDownloadPath(Lcom/amazon/kindle/model/content/IBookID;Z)Ljava/lang/String;
.end method

.method public abstract getFileConnectionFactory()Lcom/amazon/kindle/io/IFileConnectionFactory;
.end method

.method public abstract getHttpConnection()Lcom/amazon/system/net/HttpConnection;
.end method

.method public abstract getInternalVersion()J
.end method

.method public abstract getInternalVersionNumber()J
.end method

.method public abstract getLibraryUri(Lcom/amazon/kcp/library/models/BookType;)Landroid/net/Uri;
.end method

.method public abstract getLocaleCode()Ljava/lang/String;
.end method

.method public abstract getLocaleManager()Lcom/amazon/kindle/services/locale/ILocaleManager;
.end method

.method public abstract getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;
.end method

.method public abstract getMultimediaGuid(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getNetworkService()Lcom/amazon/kindle/network/INetworkService;
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract getPlatformSoftwareVersion()Ljava/lang/String;
.end method

.method public abstract getResumeToken(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSharedBookPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;
.end method

.method public abstract getSupportedLocales()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUserId()Ljava/lang/String;
.end method

.method public abstract getVersionString()Ljava/lang/String;
.end method

.method public abstract getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;
.end method

.method public abstract getXadpAppId()Ljava/lang/String;
.end method

.method public abstract hasNetworkConnectivity()Z
.end method

.method public abstract hasValidSharedDirectory()Z
.end method

.method public abstract isAnnotationsSyncEnabled()Z
.end method

.method public abstract isExternalSdCardFeatureEnabled()Z
.end method

.method public abstract isNetworkAllowedToDownloadBook(Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;)Z
.end method

.method public abstract isPathInExternalSDCard(Ljava/lang/String;)Z
.end method

.method public abstract isSilentUpdatesEnabled()Z
.end method

.method public abstract isWanConnected()Z
.end method

.method public abstract isWifiConnected()Z
.end method

.method public abstract isWifiOnlyModeEnabled()Z
.end method

.method public abstract isYJSupportedOnDevice()Z
.end method

.method public abstract onSharedDownloadFailed(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract pushDownloadEndedMetrics(Lcom/amazon/kindle/content/ContentMetadata;JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract requestAnnotationsDownload(Ljava/lang/String;)V
.end method

.method public abstract requestAnnotationsDownload(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract saveAppSettings()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sendDCMMessage(Ljava/lang/String;[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/krx/messaging/SendMessageFailureException;
        }
    .end annotation
.end method

.method public abstract setLastModifiedDateAsNow(Ljava/io/File;)Z
.end method

.method public abstract setResumeToken(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract shouldReportAdmStatusToCMS()Z
.end method

.method public abstract showAlert(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showAlertWithDPLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showDownloadErrorDialog(Lcom/amazon/kindle/content/ContentMetadata;)V
.end method

.method public abstract supportPreloadBook()Z
.end method

.method public abstract sync(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)Z
.end method

.method public abstract updateContentMetadata(Lcom/amazon/kindle/content/ContentMetadata;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/content/ContentMetadataField;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract wanDownloadLimitDisabled()Z
.end method
