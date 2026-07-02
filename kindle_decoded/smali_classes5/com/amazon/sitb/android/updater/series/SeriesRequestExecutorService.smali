.class public Lcom/amazon/sitb/android/updater/series/SeriesRequestExecutorService;
.super Ljava/lang/Object;
.source "SeriesRequestExecutorService.java"

# interfaces
.implements Lcom/amazon/sitb/android/updater/RequestExecutorService;


# static fields
.field private static final SERIES_URL_FORMAT:Ljava/lang/String; = "https://%s/next?asin=%s&version=1"

.field private static final log:Lcom/amazon/sitb/android/ISamplingLogger;


# instance fields
.field private final deviceInformationProvider:Lcom/amazon/sitb/android/IDeviceInformationProvider;

.field private final downloadManager:Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

.field private final seriesResponseHandlerFactory:Lcom/amazon/sitb/android/updater/series/SeriesResponseHandlerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/amazon/sitb/android/updater/series/SeriesRequestExecutorService;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/updater/series/SeriesRequestExecutorService;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/sitb/android/IDeviceInformationProvider;Lcom/amazon/kindle/krx/download/IKRXDownloadManager;Lcom/amazon/sitb/android/updater/series/SeriesResponseHandlerFactory;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/amazon/sitb/android/updater/series/SeriesRequestExecutorService;->deviceInformationProvider:Lcom/amazon/sitb/android/IDeviceInformationProvider;

    .line 32
    iput-object p2, p0, Lcom/amazon/sitb/android/updater/series/SeriesRequestExecutorService;->downloadManager:Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    .line 33
    iput-object p3, p0, Lcom/amazon/sitb/android/updater/series/SeriesRequestExecutorService;->seriesResponseHandlerFactory:Lcom/amazon/sitb/android/updater/series/SeriesResponseHandlerFactory;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;ILcom/amazon/sitb/android/updater/RequestExecutorService$ResponseHandler;)V
    .locals 2

    .line 39
    iget-object p2, p0, Lcom/amazon/sitb/android/updater/series/SeriesRequestExecutorService;->deviceInformationProvider:Lcom/amazon/sitb/android/IDeviceInformationProvider;

    invoke-interface {p2}, Lcom/amazon/sitb/android/IDeviceInformationProvider;->getSeriesHostname()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v0, ""

    .line 40
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p2, "https://%s/next?asin=%s&version=1"

    .line 42
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 43
    iget-object v0, p0, Lcom/amazon/sitb/android/updater/series/SeriesRequestExecutorService;->seriesResponseHandlerFactory:Lcom/amazon/sitb/android/updater/series/SeriesResponseHandlerFactory;

    invoke-virtual {v0, p1, p3}, Lcom/amazon/sitb/android/updater/series/SeriesResponseHandlerFactory;->createResponseHandler(Ljava/lang/String;Lcom/amazon/sitb/android/updater/RequestExecutorService$ResponseHandler;)Lcom/amazon/kindle/krx/download/IHttpResponseInputStreamHandler;

    move-result-object p1

    .line 44
    new-instance p3, Lcom/amazon/sitb/android/DeviceAuthenticatedWebRequest;

    invoke-direct {p3, p2, p1}, Lcom/amazon/sitb/android/DeviceAuthenticatedWebRequest;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/download/IHttpResponseInputStreamHandler;)V

    .line 45
    sget-object p1, Lcom/amazon/sitb/android/updater/series/SeriesRequestExecutorService;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "REQUEST: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/sitb/android/ISamplingLogger;->info(Ljava/lang/String;)V

    .line 46
    iget-object p1, p0, Lcom/amazon/sitb/android/updater/series/SeriesRequestExecutorService;->downloadManager:Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    invoke-interface {p1, p3}, Lcom/amazon/kindle/krx/download/IKRXDownloadManager;->enqueueDownloadRequest(Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;)Ljava/lang/String;

    goto :goto_0

    .line 50
    :cond_0
    sget-object p1, Lcom/amazon/sitb/android/updater/series/SeriesRequestExecutorService;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string/jumbo p2, "seriesEndPoint is not available"

    invoke-interface {p1, p2}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
