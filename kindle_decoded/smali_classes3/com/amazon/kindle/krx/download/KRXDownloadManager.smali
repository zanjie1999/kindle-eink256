.class public Lcom/amazon/kindle/krx/download/KRXDownloadManager;
.super Ljava/lang/Object;
.source "KRXDownloadManager.java"

# interfaces
.implements Lcom/amazon/kindle/krx/download/IKRXDownloadManager;


# static fields
.field private static final DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

.field private static final TAG:Ljava/lang/String;

.field private static final clientId:Ljava/lang/String; = "krx"


# instance fields
.field private applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

.field private downloadService:Lcom/amazon/kindle/services/download/IDownloadService;

.field private factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

.field private progressListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/download/IDownloadStatusListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    const-class v0, Lcom/amazon/kindle/krx/download/KRXDownloadManager;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/krx/download/KRXDownloadManager;->TAG:Ljava/lang/String;

    .line 45
    new-instance v0, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$PLUGIN;

    const-string v1, "KRXDownloadManagerPlaceholder"

    invoke-direct {v0, v1}, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$PLUGIN;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/krx/download/KRXDownloadManager;->DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/application/IKindleObjectFactory;Lcom/amazon/kindle/krx/application/IApplicationManager;Lcom/amazon/kindle/services/download/IDownloadService;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/download/KRXDownloadManager;->progressListenerMap:Ljava/util/Map;

    .line 60
    iput-object p1, p0, Lcom/amazon/kindle/krx/download/KRXDownloadManager;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    .line 61
    iput-object p2, p0, Lcom/amazon/kindle/krx/download/KRXDownloadManager;->applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    .line 62
    iput-object p3, p0, Lcom/amazon/kindle/krx/download/KRXDownloadManager;->downloadService:Lcom/amazon/kindle/services/download/IDownloadService;

    .line 63
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method private addDownloadRequest(Lcom/amazon/kindle/krx/download/KrxDownloadRequest;)V
    .locals 1

    .line 154
    sget-object v0, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;->HIGH:Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setPriority(Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 155
    iget-object v0, p0, Lcom/amazon/kindle/krx/download/KRXDownloadManager;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/webservices/IWebRequestManager;->addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    return-void
.end method

.method public static getHttpRequestPathAndQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 168
    invoke-static {p0}, Lcom/amazon/kindle/krx/download/KRXDownloadManager;->getUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    .line 169
    invoke-virtual {p0}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-virtual {p0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v1, "?"

    if-eqz v0, :cond_0

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 175
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static getUri(Ljava/lang/String;)Ljava/net/URI;
    .locals 2

    .line 160
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid url:"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private recordTapToOpenableStart(Ljava/lang/String;)V
    .locals 5

    .line 207
    iget-object v0, p0, Lcom/amazon/kindle/krx/download/KRXDownloadManager;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    .line 208
    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 210
    iget-object v0, p0, Lcom/amazon/kindle/krx/download/KRXDownloadManager;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContentOpenMetricsManager()Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    move-result-object v0

    .line 211
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->isSample()Z

    move-result p1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const/4 v3, 0x0

    sget-object v4, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_OPENABLE:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    aput-object v4, v2, v3

    const-string v3, "krx"

    invoke-virtual {v0, v1, p1, v3, v2}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->startExperiences(Lcom/amazon/kindle/model/content/IBookID;ZLjava/lang/String;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    :cond_0
    return-void
.end method

.method private validateBook(Ljava/lang/String;)Z
    .locals 1

    .line 102
    invoke-static {p1}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 106
    invoke-static {}, Lcom/amazon/kindle/krx/KindleReaderSDK;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v0

    .line 107
    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getContent(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    if-nez p1, :cond_0

    .line 110
    sget-object p1, Lcom/amazon/kindle/krx/download/KRXDownloadManager;->TAG:Ljava/lang/String;

    const-string v0, "The book is not recognized as a local book"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 104
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid book id"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public cancelDownload(Ljava/lang/String;)V
    .locals 3

    .line 274
    sget-object v0, Lcom/amazon/kindle/krx/download/KRXDownloadManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancelling download for bookId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/amazon/kindle/krx/download/KRXDownloadManager;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/ILibraryController;->cancelDownload(Ljava/lang/String;)V

    return-void
.end method

.method public downloadBook(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 2

    .line 197
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/krx/download/KRXDownloadManager;->recordTapToOpenableStart(Ljava/lang/String;)V

    .line 198
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/amazon/kindle/krx/download/KRXDownloadManager;->DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    invoke-interface {v0, p1, v1}, Lcom/amazon/kcp/library/ILibraryController;->downloadBook(Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z

    move-result p1

    return p1
.end method

.method public downloadBook(Ljava/lang/String;Lcom/amazon/kindle/krx/download/IDownloadStatusListener;)Z
    .locals 1

    if-eqz p2, :cond_0

    .line 184
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/krx/download/KRXDownloadManager;->registerDownloadProgressListener(Ljava/lang/String;Lcom/amazon/kindle/krx/download/IDownloadStatusListener;)V

    .line 186
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/download/KRXDownloadManager;->recordTapToOpenableStart(Ljava/lang/String;)V

    .line 187
    iget-object p2, p0, Lcom/amazon/kindle/krx/download/KRXDownloadManager;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object p2

    sget-object v0, Lcom/amazon/kindle/krx/download/KRXDownloadManager;->DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    invoke-interface {p2, p1, v0}, Lcom/amazon/kcp/library/ILibraryController;->downloadBook(Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public downloadSidecar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/kindle/krx/download/IKRXResponseHandler;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 119
    invoke-virtual/range {v0 .. v6}, Lcom/amazon/kindle/krx/download/KRXDownloadManager;->downloadSidecar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/kindle/krx/download/IKRXResponseHandler;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public downloadSidecar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/kindle/krx/download/IKRXResponseHandler;Ljava/util/Map;)Ljava/lang/String;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/amazon/kindle/krx/download/IKRXResponseHandler;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 127
    invoke-direct/range {p0 .. p1}, Lcom/amazon/kindle/krx/download/KRXDownloadManager;->validateBook(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_0

    return-object v2

    .line 130
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v2

    .line 135
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/amazon/kindle/krx/download/KRXDownloadManager;->applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-object/from16 v15, p1

    move/from16 v5, p4

    .line 136
    invoke-interface {v4, v15, v5}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getContentSidecarDirectory(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 139
    new-instance v3, Lcom/amazon/kindle/krx/download/KrxDownloadRequest;

    iget-object v4, v0, Lcom/amazon/kindle/krx/download/KRXDownloadManager;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    .line 140
    invoke-interface {v4}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v6

    iget-object v4, v0, Lcom/amazon/kindle/krx/download/KRXDownloadManager;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v4}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object v7

    const/4 v11, 0x0

    const/16 v14, 0x3a98

    const-string v10, "GET"

    move-object v5, v3

    move-object/from16 v8, p2

    move-object/from16 v12, p6

    move-object/from16 v13, p5

    invoke-direct/range {v5 .. v15}, Lcom/amazon/kindle/krx/download/KrxDownloadRequest;-><init>(Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kindle/network/INetworkService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/util/Map;Lcom/amazon/kindle/krx/download/IKRXResponseHandler;ILjava/lang/String;)V

    .line 143
    sget-object v4, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;->HIGH:Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    invoke-virtual {v3, v4}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setPriority(Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 146
    iget-object v4, v0, Lcom/amazon/kindle/krx/download/KRXDownloadManager;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v4}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSidecarDownloadService()Lcom/amazon/kindle/services/download/ISidecarDownloadService;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v1, v3, v5}, Lcom/amazon/kindle/services/download/ISidecarDownloadService;->download(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/webservices/IWebRequest;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    return-object v2

    .line 150
    :cond_2
    invoke-virtual {v3}, Lcom/amazon/kindle/krx/download/KrxDownloadRequest;->getId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public enqueueDownloadRequest(Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_2

    .line 78
    invoke-interface {p1}, Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;->getBookId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    invoke-interface {p1}, Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/krx/download/KRXDownloadManager;->validateBook(Ljava/lang/String;)Z

    .line 86
    :cond_0
    instance-of v0, p1, Lcom/amazon/kindle/krx/download/IExtendedKRXDownloadRequest;

    if-eqz v0, :cond_1

    .line 87
    new-instance v0, Lcom/amazon/kindle/krx/download/KrxDownloadRequest;

    iget-object v1, p0, Lcom/amazon/kindle/krx/download/KRXDownloadManager;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/krx/download/KRXDownloadManager;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v2}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object v2

    check-cast p1, Lcom/amazon/kindle/krx/download/IExtendedKRXDownloadRequest;

    invoke-direct {v0, v1, v2, p1}, Lcom/amazon/kindle/krx/download/KrxDownloadRequest;-><init>(Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kindle/network/INetworkService;Lcom/amazon/kindle/krx/download/IExtendedKRXDownloadRequest;)V

    goto :goto_0

    .line 90
    :cond_1
    new-instance v0, Lcom/amazon/kindle/krx/download/KrxDownloadRequest;

    iget-object v1, p0, Lcom/amazon/kindle/krx/download/KRXDownloadManager;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/krx/download/KRXDownloadManager;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v2}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/amazon/kindle/krx/download/KrxDownloadRequest;-><init>(Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kindle/network/INetworkService;Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;)V

    .line 92
    :goto_0
    invoke-direct {p0, v0}, Lcom/amazon/kindle/krx/download/KRXDownloadManager;->addDownloadRequest(Lcom/amazon/kindle/krx/download/KrxDownloadRequest;)V

    .line 93
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/download/KrxDownloadRequest;->getId()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 76
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null request"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getStatus(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;
    .locals 0

    .line 98
    sget-object p1, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->UNKNOWN:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    return-object p1
.end method

.method public onDownloadProgressEvent(Lcom/amazon/kindle/services/download/IDownloadService$DownloadProgressUpdateEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 232
    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/IDownloadService$DownloadProgressUpdateEvent;->getDownload()Lcom/amazon/kindle/services/download/IContentDownload;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IContentDownload;->getBookId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v1, p0, Lcom/amazon/kindle/krx/download/KRXDownloadManager;->progressListenerMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/IDownloadService$DownloadProgressUpdateEvent;->getDownload()Lcom/amazon/kindle/services/download/IContentDownload;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getPercentage()I

    move-result p1

    .line 237
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/download/IDownloadStatusListener;

    .line 238
    invoke-interface {v1, p1}, Lcom/amazon/kindle/krx/download/IDownloadStatusListener;->onProgressChange(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDownloadStateUpdateEvent(Lcom/amazon/kindle/services/download/IDownloadService$DownloadStateUpdateEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 247
    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/IDownloadService$DownloadStateUpdateEvent;->getDownload()Lcom/amazon/kindle/services/download/IContentDownload;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IContentDownload;->getBookId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 249
    iget-object v1, p0, Lcom/amazon/kindle/krx/download/KRXDownloadManager;->progressListenerMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_4

    .line 251
    sget-object v2, Lcom/amazon/kindle/krx/download/KRXDownloadManager$1;->$SwitchMap$com$amazon$kindle$model$content$ContentState:[I

    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/IDownloadService$DownloadStateUpdateEvent;->getDownloadState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    goto :goto_2

    .line 261
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/download/IDownloadStatusListener;

    .line 262
    invoke-interface {v1}, Lcom/amazon/kindle/krx/download/IDownloadStatusListener;->onFailure()V

    goto :goto_0

    .line 264
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/krx/download/KRXDownloadManager;->progressListenerMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 253
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/download/IDownloadStatusListener;

    .line 254
    invoke-interface {v1}, Lcom/amazon/kindle/krx/download/IDownloadStatusListener;->onSuccess()V

    goto :goto_1

    .line 256
    :cond_3
    iget-object p1, p0, Lcom/amazon/kindle/krx/download/KRXDownloadManager;->progressListenerMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    return-void
.end method

.method public registerDownloadProgressListener(Ljava/lang/String;Lcom/amazon/kindle/krx/download/IDownloadStatusListener;)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 219
    iget-object v0, p0, Lcom/amazon/kindle/krx/download/KRXDownloadManager;->progressListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 221
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 223
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 224
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object p2, p0, Lcom/amazon/kindle/krx/download/KRXDownloadManager;->progressListenerMap:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public signRequest(Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 69
    sget-object p1, Lcom/amazon/kindle/krx/download/KRXDownloadManager;->TAG:Ljava/lang/String;

    const-string v0, "This is no longer necessary, request will be signed automatically"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
