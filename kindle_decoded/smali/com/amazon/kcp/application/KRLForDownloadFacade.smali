.class public Lcom/amazon/kcp/application/KRLForDownloadFacade;
.super Ljava/lang/Object;
.source "KRLForDownloadFacade.java"

# interfaces
.implements Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.kcp.application.KRLForDownloadFacade"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addContentMetadata(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;)V"
        }
    .end annotation

    .line 77
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    .line 78
    invoke-interface {v0, p1}, Lcom/amazon/kindle/content/ILibraryService;->addContentMetadata(Ljava/util/Collection;)V

    return-void
.end method

.method public addLocalContent(Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;
    .locals 2

    .line 101
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    .line 102
    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/content/ILibraryService;->addLocalContent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    return-object p1
.end method

.method public addLocalDownloadingContent(Ljava/lang/String;Lcom/amazon/kindle/model/content/ContentState;Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/content/ContentMetadata;
    .locals 2

    .line 110
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    .line 111
    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/amazon/kindle/content/ILibraryService;->addLocalDownloadingContent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/model/content/ContentState;Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    return-object p1
.end method

.method public addOwnership(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 381
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getMultipleProfileHelper()Lcom/amazon/kcp/application/IMultipleProfileHelper;

    move-result-object v0

    .line 382
    invoke-interface {v0, p1}, Lcom/amazon/kcp/application/IMultipleProfileHelper;->addOwnership(Ljava/lang/String;)V

    return-void
.end method

.method public avaliableSizeForPath(Ljava/lang/String;)J
    .locals 2

    .line 341
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/io/IFileConnectionFactory;->avaliableSizeForPath(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public deleteFile(Ljava/lang/String;)Z
    .locals 1

    .line 347
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/kindle/io/FileSystemHelper;->deleteFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public deleteItemLocally(Ljava/lang/String;Ljava/lang/String;ZZZZ)V
    .locals 8

    .line 95
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 96
    invoke-interface/range {v1 .. v7}, Lcom/amazon/kindle/content/ILibraryService;->deleteItemLocally(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    return-void
.end method

.method public emitEarlyAnnotationsSidecarRequestWillNotCompleteEvent(Ljava/lang/String;)V
    .locals 1

    .line 564
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAnnotationsManager()Lcom/amazon/kindle/annotation/IAnnotationsManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/annotation/IAnnotationsManager;->emitEarlyAnnotationsSidecarRequestWillNotCompleteEvent(Ljava/lang/String;)V

    return-void
.end method

.method public enablePaidWan()Z
    .locals 2

    .line 469
    sget-object v0, Lcom/amazon/kcp/application/ReddingApplication;->defaultApplicationContext:Lcom/amazon/kcp/application/ReddingApplication;

    .line 471
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$bool;->use_paid_wan:I

    .line 472
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public enabledSharedBookDownload()Z
    .locals 2

    .line 354
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 355
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$bool;->shared_book_download_enabled:I

    .line 356
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public enforceDownloadLimitOnWan()Z
    .locals 2

    .line 515
    sget-object v0, Lcom/amazon/kcp/application/ReddingApplication;->defaultApplicationContext:Lcom/amazon/kcp/application/ReddingApplication;

    .line 517
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$bool;->enforce_download_limit_on_wan:I

    .line 518
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public getActiveNetworkProperties()Lcom/amazon/kindle/network/NetworkProperties;
    .locals 1

    .line 232
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/network/INetworkService;->getActiveNetworkProperties()Lcom/amazon/kindle/network/NetworkProperties;

    move-result-object v0

    return-object v0
.end method

.method public getAmazonLocaleCode()Ljava/lang/String;
    .locals 1

    .line 210
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLocaleManager()Lcom/amazon/kindle/services/locale/ILocaleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/locale/ILocaleManager;->getAmazonLocaleCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppWanDownloadLimit()I
    .locals 1

    .line 510
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getAppWanDownloadLimit()I

    move-result v0

    return v0
.end method

.method public getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;
    .locals 1

    .line 529
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    return-object v0
.end method

.method public getAuthenticationToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;
    .locals 1

    .line 262
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kcp/application/IAuthenticationManager;->getToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getBookPageNumbers(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;
    .locals 2

    .line 298
    new-instance v0, Lcom/amazon/kcp/library/models/BookFileEnumerator;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/models/BookFileEnumerator;-><init>(Lcom/amazon/kindle/io/IFileConnectionFactory;)V

    .line 299
    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/library/models/BookFileEnumerator;->getBookPageNumbers(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getBookPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .line 143
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/kindle/io/IPathDescriptor;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/io/IPathDescriptor;->getBookPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getContentMetadata(Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;
    .locals 2

    .line 65
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    .line 66
    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    return-object p1
.end method

.method public getContentMetadata(Ljava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;
    .locals 2

    .line 71
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    .line 72
    invoke-virtual {p0}, Lcom/amazon/kcp/application/KRLForDownloadFacade;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    return-object p1
.end method

.method public getContentOpenMetricsManager()Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;
    .locals 1

    .line 559
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContentOpenMetricsManager()Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 523
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCoverImage(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;)Ljava/lang/String;
    .locals 1

    .line 155
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverManager()Lcom/amazon/kindle/cover/ICoverImageService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/cover/ICoverImageService;->getImage(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDeviceSerialNumber()Ljava/lang/String;
    .locals 1

    .line 257
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSecurity()Lcom/mobipocket/android/library/reader/AndroidSecurity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/android/library/reader/AndroidSecurity;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadContentIncompatibleErrorMessage()Ljava/lang/String;
    .locals 2

    .line 271
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->error_message_download_content_incompatible:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadPath(Lcom/amazon/kindle/model/content/IBookID;Z)Ljava/lang/String;
    .locals 1

    .line 136
    invoke-virtual {p0}, Lcom/amazon/kcp/application/KRLForDownloadFacade;->getFileConnectionFactory()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/amazon/kindle/io/FileSystemHelper;->getDownloadPath(Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kindle/model/content/IBookID;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFileConnectionFactory()Lcom/amazon/kindle/io/IFileConnectionFactory;
    .locals 1

    .line 124
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v0

    return-object v0
.end method

.method public getHttpConnection()Lcom/amazon/system/net/HttpConnection;
    .locals 1

    .line 485
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getHttpConnectionFactory()Lcom/amazon/system/net/HttpConnectionFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/system/net/HttpConnectionFactory;->getHttpConnection()Lcom/amazon/system/net/HttpConnection;

    move-result-object v0

    return-object v0
.end method

.method public getInternalVersion()J
    .locals 2

    .line 405
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getInternalVersion()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInternalVersionNumber()J
    .locals 2

    .line 252
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->getInternalVersionNumber()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLibraryUri(Lcom/amazon/kcp/library/models/BookType;)Landroid/net/Uri;
    .locals 0

    .line 160
    invoke-static {p1}, Lcom/amazon/kindle/cms/CMSUtils;->getLibraryUri(Lcom/amazon/kcp/library/models/BookType;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public getLocaleCode()Ljava/lang/String;
    .locals 1

    .line 205
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLocaleManager()Lcom/amazon/kindle/services/locale/ILocaleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/locale/ILocaleManager;->getLocaleCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocaleManager()Lcom/amazon/kindle/services/locale/ILocaleManager;
    .locals 1

    .line 547
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLocaleManager()Lcom/amazon/kindle/services/locale/ILocaleManager;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;
    .locals 1

    .line 541
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    return-object v0
.end method

.method public getMultimediaGuid(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 415
    invoke-static {}, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->getInstance()Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->getMultimediaGuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNetworkService()Lcom/amazon/kindle/network/INetworkService;
    .locals 1

    .line 535
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 242
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlatformSoftwareVersion()Ljava/lang/String;
    .locals 1

    .line 247
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getPlatformSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResumeToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 490
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationSettings()Lcom/amazon/system/io/IPersistentSettingsHelper;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/kcp/library/models/internal/ResumableDownloadHelper;->getToken(Lcom/amazon/system/io/IPersistentSettingsHelper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSharedBookPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;
    .locals 1

    .line 375
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getMultipleProfileHelper()Lcom/amazon/kcp/application/IMultipleProfileHelper;

    move-result-object v0

    .line 376
    invoke-interface {v0, p1}, Lcom/amazon/kcp/application/IMultipleProfileHelper;->getSharedBookPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSupportedLocales()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 200
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLocaleManager()Lcom/amazon/kindle/services/locale/ILocaleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/locale/ILocaleManager;->getSupportedLocales()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 83
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    .line 84
    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionString()Ljava/lang/String;
    .locals 1

    .line 410
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getVersionString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;
    .locals 1

    .line 553
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;

    move-result-object v0

    return-object v0
.end method

.method public getXadpAppId()Ljava/lang/String;
    .locals 1

    .line 276
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getXadpAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasNetworkConnectivity()Z
    .locals 3

    .line 220
    sget-object v0, Lcom/amazon/kcp/application/ReddingApplication;->defaultApplicationContext:Lcom/amazon/kcp/application/ReddingApplication;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/network/NetworkService;->hasNetworkConnectivity(Landroid/content/Context;Ljava/lang/Integer;Z)Z

    move-result v0

    return v0
.end method

.method public hasValidSharedDirectory()Z
    .locals 6

    .line 361
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getMultipleProfileHelper()Lcom/amazon/kcp/application/IMultipleProfileHelper;

    move-result-object v0

    .line 362
    invoke-interface {v0}, Lcom/amazon/kcp/application/IMultipleProfileHelper;->getSecuredStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 363
    invoke-interface {v0}, Lcom/amazon/kcp/application/IMultipleProfileHelper;->isSharedDownloadsEnabled()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    .line 366
    :cond_1
    :goto_0
    sget-object v3, Lcom/amazon/kcp/application/KRLForDownloadFacade;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Did not initialize shared download shared directory is empty : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " shared download is enabled "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return v5
.end method

.method public isAnnotationsSyncEnabled()Z
    .locals 1

    .line 317
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isAnnotationsSyncEnabled()Z

    move-result v0

    return v0
.end method

.method public isExternalSdCardFeatureEnabled()Z
    .locals 1

    .line 266
    invoke-static {}, Lcom/amazon/kindle/sdcard/ExternalSDCardUtils;->isExternalSDCardFeatureEnabled()Z

    move-result v0

    return v0
.end method

.method public isNetworkAllowedToDownloadBook(Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;)Z
    .locals 0

    .line 389
    invoke-static {p1}, Lcom/amazon/kindle/download/BookDownloadNetworkUtils;->isNetworkAllowed(Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;)Z

    move-result p1

    return p1
.end method

.method public isPathInExternalSDCard(Ljava/lang/String;)Z
    .locals 1

    .line 148
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/kindle/io/IPathDescriptor;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/io/IPathDescriptor;->isPathInExternalSDCard(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isSilentUpdatesEnabled()Z
    .locals 1

    .line 119
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAppSettingsController;->getSilentUpdatesEnabled()Z

    move-result v0

    return v0
.end method

.method public isWanConnected()Z
    .locals 1

    .line 227
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/network/INetworkService;->isWanConnected()Z

    move-result v0

    return v0
.end method

.method public isWifiConnected()Z
    .locals 1

    .line 215
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/network/INetworkService;->isWifiConnected()Z

    move-result v0

    return v0
.end method

.method public isWifiOnlyModeEnabled()Z
    .locals 2

    .line 477
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 478
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    .line 479
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getDownloadBookNetworkMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isYJSupportedOnDevice()Z
    .locals 1

    .line 237
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->isYJSupportedOnDevice()Z

    move-result v0

    return v0
.end method

.method public onSharedDownloadFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 306
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getMultipleProfileHelper()Lcom/amazon/kcp/application/IMultipleProfileHelper;

    move-result-object v0

    .line 307
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v1

    .line 309
    invoke-interface {v0, p1}, Lcom/amazon/kcp/application/IMultipleProfileHelper;->revokeOwnership(Ljava/lang/String;)Z

    const/4 p1, 0x0

    .line 310
    invoke-interface {v0, p1}, Lcom/amazon/kcp/application/IMultipleProfileHelper;->setSharedDownloadsEnabled(Z)V

    .line 311
    sget-object p1, Lcom/amazon/kcp/application/KRLForDownloadFacade;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancelling download for bookId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " due to shared download failure"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-interface {v1, p2}, Lcom/amazon/kcp/library/ILibraryController;->cancelDownload(Ljava/lang/String;)V

    return-void
.end method

.method public pushDownloadEndedMetrics(Lcom/amazon/kindle/content/ContentMetadata;JLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 428
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 429
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getActiveContext()Landroid/content/Context;

    move-result-object v1

    .line 430
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BookWithAllAssetsDownloadTime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 431
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/kindle/download/MimeTypeHelper;->getIssueDownloadingMimetype(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 432
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/kcp/library/models/BookType;->getName()Ljava/lang/String;

    move-result-object v4

    .line 435
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/amazon/kindle/krl/R$string;->intent_extras_issue:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/amazon/kindle/krl/R$string;->intent_extras_parent_asin:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getParentAsin()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/amazon/kindle/krl/R$string;->intent_extras_subscriber_type:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getOriginType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/amazon/kindle/krl/R$string;->intent_extras_pubdate:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getPublicationDateInMillis()J

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 439
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/amazon/kindle/krl/R$string;->intent_extras_size:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 440
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/amazon/kindle/krl/R$string;->intent_extras_mimetype:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/amazon/kindle/krl/R$string;->intent_extras_booktype:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    sget-object p2, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;->COMPLETED:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    sget-object p2, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;->CANCELLED:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    .line 444
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 455
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/amazon/kindle/krl/R$string;->intent_action_download_failed:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p5, :cond_2

    .line 459
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/amazon/kindle/krl/R$string;->intent_extras_failure_reason:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 446
    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/amazon/kindle/krl/R$string;->intent_action_download_completed:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 449
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/amazon/kindle/krl/R$string;->intent_extras_duration:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 450
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p3

    invoke-virtual {p3, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->getMetricElapsedTime(Ljava/lang/String;)J

    move-result-wide v2

    .line 449
    invoke-virtual {v0, p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 451
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/amazon/kindle/krl/R$string;->intent_extras_status:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/amazon/kindle/krl/R$string;->intent_extras_did_pause:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 463
    :cond_2
    :goto_1
    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 464
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/amazon/kindle/download/MimeTypeHelper;->setIssueDownloadingMimetype(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public requestAnnotationsDownload(Ljava/lang/String;)V
    .locals 1

    .line 286
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAnnotationsManager()Lcom/amazon/kindle/annotation/IAnnotationsManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/annotation/IAnnotationsManager;->requestAnnotationsDownload(Ljava/lang/String;)V

    return-void
.end method

.method public requestAnnotationsDownload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 291
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAnnotationsManager()Lcom/amazon/kindle/annotation/IAnnotationsManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/annotation/IAnnotationsManager;->requestAnnotationsDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveAppSettings()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 505
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationSettings()Lcom/amazon/system/io/IPersistentSettingsHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/system/io/IPersistentSettingsHelper;->save()V

    return-void
.end method

.method public sendDCMMessage(Ljava/lang/String;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/krx/messaging/SendMessageFailureException;
        }
    .end annotation

    .line 396
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 398
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMessagingManager()Lcom/amazon/kindle/krx/messaging/IMessagingManager;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/amazon/dcp/messaging/DeliveryOption;

    .line 399
    invoke-interface {v0, p1, p2, v1}, Lcom/amazon/kindle/krx/messaging/IMessagingManager;->send(Ljava/lang/String;[B[Lcom/amazon/dcp/messaging/DeliveryOption;)V

    :cond_0
    return-void
.end method

.method public setLastModifiedDateAsNow(Ljava/io/File;)Z
    .locals 0

    .line 129
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->setLastModifiedDateAsNow(Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method public setResumeToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 498
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationSettings()Lcom/amazon/system/io/IPersistentSettingsHelper;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/amazon/kcp/library/models/internal/ResumableDownloadHelper;->setToken(Lcom/amazon/system/io/IPersistentSettingsHelper;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldReportAdmStatusToCMS()Z
    .locals 2

    .line 166
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$bool;->report_adm_status_to_cms:I

    .line 168
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/kindle/cms/CMSUtils;->isCMSInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public showAlert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 324
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/amazon/kcp/application/IUIMessaging;->showAlert(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showAlertWithDPLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 333
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/amazon/kcp/application/IUIMessaging;->showAlertWithDPLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showDownloadErrorDialog(Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 4

    .line 181
    sget-object v0, Lcom/amazon/kcp/application/ReddingApplication;->defaultApplicationContext:Lcom/amazon/kcp/application/ReddingApplication;

    .line 182
    new-instance v1, Landroid/content/Intent;

    .line 183
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDownloadErrorActivityClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v2

    const-string v3, "book_id"

    .line 184
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 187
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getError()I

    move-result p1

    const-string v3, "error_reason"

    .line 186
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v2, "remove_download_on_cancel"

    const/4 v3, 0x0

    .line 188
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p1, 0x58000000

    .line 192
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 195
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public supportPreloadBook()Z
    .locals 1

    .line 281
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->supportPreloadBook()Z

    move-result v0

    return v0
.end method

.method public sync(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)Z
    .locals 1

    .line 420
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSynchronizationManager()Lcom/amazon/kindle/sync/SynchronizationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/sync/SynchronizationManager;->sync(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)Z

    move-result p1

    return p1
.end method

.method public updateContentMetadata(Lcom/amazon/kindle/content/ContentMetadata;Ljava/util/Map;)V
    .locals 1
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

    .line 89
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    .line 90
    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/content/ILibraryService;->updateContentMetadata(Lcom/amazon/kindle/content/ContentMetadata;Ljava/util/Map;)V

    return-void
.end method

.method public wanDownloadLimitDisabled()Z
    .locals 2

    .line 174
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$bool;->disable_WAN_download_limit:I

    .line 176
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method
