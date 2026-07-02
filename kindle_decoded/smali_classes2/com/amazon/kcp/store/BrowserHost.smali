.class public Lcom/amazon/kcp/store/BrowserHost;
.super Lcom/amazon/kcp/store/BaseJavascriptHost;
.source "BrowserHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/store/BrowserHost$InitData;,
        Lcom/amazon/kcp/store/BrowserHost$StoreBookData;,
        Lcom/amazon/kcp/store/BrowserHost$StoreBookPayload;,
        Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;,
        Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;
    }
.end annotation


# static fields
.field static final API_VERSION_NUMBER:I = 0x3

.field private static final CLOSE_AND_GOTO_ACTION:Ljava/lang/String; = "CloseAndGoto"

.field private static final CLOSE_STORE_ACTION:Ljava/lang/String; = "CloseStore"

.field private static final CONTEXT_BROWSERHOST:Ljava/lang/String; = "BrowserHost"

.field public static final JAVASCRIPT_INTERFACE_NAME:Ljava/lang/String; = "PrivateBrowserHost"

.field private static final LIBRARY_LOCATION_CODE:Ljava/lang/String; = "//home/books"

.field public static final MAX_PROGRESS:F = 100.0f

.field private static final METADATA_EXTERNAL_URL:Ljava/lang/String; = "ExternalUrl"

.field private static final METADATA_RETURN_LOCATION:Ljava/lang/String; = "ReturnLocation"

.field private static final OPEN_IN_EXTERNAL_BROWSER_ACTION:Ljava/lang/String; = "OpenInExternalBrowser"

.field public static final ORDER_TYPE_FREE_CHAPTER:Ljava/lang/String; = "FREE_CHAPTER"

.field public static final STORE_CLOSE_LOCATION_BOOKS:Ljava/lang/String; = "//home/books"

.field public static final STORE_CLOSE_LOCATION_NEWSSTAND:Ljava/lang/String; = "//home/newsstand"

.field private static final STORE_PREFS_KEY:Ljava/lang/String; = "storePrefs"

.field private static final STORE_PREFS_NAME:Ljava/lang/String; = "StorePrefs"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private browserhostJavaScript:Ljava/lang/String;

.field private isTOSOpened:Z

.field private jsonJavaScript:Ljava/lang/String;

.field private store:Lcom/amazon/kcp/store/listener/StoreInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    const-class v0, Lcom/amazon/kcp/store/BrowserHost;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/store/BrowserHost;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/store/listener/StoreInterface;Lcom/amazon/kcp/store/IWebViewJSWrapper;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "ErrorReadingJSFile"

    const-string v1, "BrowserHost"

    .line 402
    invoke-direct {p0, p2}, Lcom/amazon/kcp/store/BaseJavascriptHost;-><init>(Lcom/amazon/kcp/store/IWebViewJSWrapper;)V

    .line 403
    iput-object p1, p0, Lcom/amazon/kcp/store/BrowserHost;->store:Lcom/amazon/kcp/store/listener/StoreInterface;

    .line 406
    :try_start_0
    sget p1, Lcom/amazon/kcp/store/R$raw;->browserhost:I

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/store/BaseJavascriptHost;->readRawJSResource(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/store/BrowserHost;->browserhostJavaScript:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 413
    :try_start_1
    sget p1, Lcom/amazon/kcp/store/R$raw;->json:I

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/store/BaseJavascriptHost;->readRawJSResource(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/store/BrowserHost;->jsonJavaScript:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 415
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p2

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {p2, v1, v0, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 416
    throw p1

    :catch_1
    move-exception p1

    .line 408
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p2

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {p2, v1, v0, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 409
    throw p1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 65
    sget-object v0, Lcom/amazon/kcp/store/BrowserHost;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/store/BrowserHost;)Lcom/amazon/kcp/store/listener/StoreInterface;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/amazon/kcp/store/BrowserHost;->store:Lcom/amazon/kcp/store/listener/StoreInterface;

    return-object p0
.end method

.method private kindleReady(Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 10
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .line 947
    new-instance v9, Lcom/amazon/kcp/store/BrowserHost$InitData;

    sget-object v4, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;->NOT_AVAILABLE:Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

    iget-object v0, p0, Lcom/amazon/kcp/store/BrowserHost;->store:Lcom/amazon/kcp/store/listener/StoreInterface;

    .line 951
    invoke-interface {v0}, Lcom/amazon/kcp/store/listener/StoreInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "StorePrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "storePrefs"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x3

    move-object v0, v9

    move-object v2, p1

    move-object v3, p2

    move-wide v6, p3

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/amazon/kcp/store/BrowserHost$InitData;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;Ljava/lang/String;JZ)V

    .line 955
    iget-object p1, p0, Lcom/amazon/kcp/store/BaseJavascriptHost;->jsWrapper:Lcom/amazon/kcp/store/IWebViewJSWrapper;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "(function(){if(window.onKindleReady){window.onKindleReady("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ");}})()"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/kcp/store/IWebViewJSWrapper;->execute(Ljava/lang/String;)V

    return-void
.end method

.method private nativeStatusUpdate(Lcom/amazon/kindle/model/content/IBookID;IF)V
    .locals 4

    .line 793
    iget-object v0, p0, Lcom/amazon/kcp/store/BaseJavascriptHost;->jsWrapper:Lcom/amazon/kcp/store/IWebViewJSWrapper;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v1, p2

    const-string p1, "(function(){BrowserHost.nativeStatusReply(\'%s\',\'%s\', %d, %f);})()"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kcp/store/IWebViewJSWrapper;->execute(Ljava/lang/String;)V

    return-void
.end method

.method private openStoreBook(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kcp/store/BrowserHost$StoreBookPayload$BookMetadata;Ljava/lang/Boolean;)V
    .locals 9

    .line 601
    iget-object v0, p0, Lcom/amazon/kcp/store/BrowserHost;->store:Lcom/amazon/kcp/store/listener/StoreInterface;

    invoke-interface {v0}, Lcom/amazon/kcp/store/listener/StoreInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 602
    invoke-static {}, Lcom/amazon/kcp/store/StoreDiscoveryEntryPoints;->getInstance()Lcom/amazon/kcp/store/StoreDiscoveryEntryPointsInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/store/StoreDiscoveryEntryPointsInterface;->getStoreBookHelper()Lcom/amazon/kindle/store/StoreBookHelper;

    move-result-object v8

    .line 603
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/BookType;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p2, Lcom/amazon/kcp/store/BrowserHost$StoreBookPayload$BookMetadata;->title:Ljava/lang/String;

    iget-object v6, p2, Lcom/amazon/kcp/store/BrowserHost$StoreBookPayload$BookMetadata;->authors:Ljava/util/List;

    .line 604
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move-object v1, v8

    move-object v2, v0

    .line 603
    invoke-interface/range {v1 .. v7}, Lcom/amazon/kindle/store/StoreBookHelper;->oneTapBookOpen(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 608
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/library/models/BookType;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v8, v0, p2, p1}, Lcom/amazon/kindle/store/StoreBookHelper;->openBook(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "BrowserHost"

    if-nez p1, :cond_1

    .line 612
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string p3, "LocalBookOpen"

    invoke-virtual {p1, p2, p3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    iget-object p1, p0, Lcom/amazon/kcp/store/BrowserHost;->store:Lcom/amazon/kcp/store/listener/StoreInterface;

    invoke-interface {p1}, Lcom/amazon/kcp/store/listener/StoreInterface;->onOpenLocalBook()V

    goto :goto_0

    .line 616
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p3

    const-string v1, "DownloadAndOpen"

    invoke-virtual {p3, p2, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 617
    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public TOSOpened()V
    .locals 2

    .line 772
    invoke-virtual {p0}, Lcom/amazon/kcp/store/BrowserHost;->isAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 776
    iput-boolean v0, p0, Lcom/amazon/kcp/store/BrowserHost;->isTOSOpened:Z

    .line 777
    iget-object v0, p0, Lcom/amazon/kcp/store/BrowserHost;->store:Lcom/amazon/kcp/store/listener/StoreInterface;

    invoke-interface {v0}, Lcom/amazon/kcp/store/listener/StoreInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/store/BrowserHost$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/store/BrowserHost$1;-><init>(Lcom/amazon/kcp/store/BrowserHost;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bookStatus(Ljava/lang/String;)V
    .locals 6

    .line 699
    invoke-virtual {p0}, Lcom/amazon/kcp/store/BrowserHost;->isAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 703
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BrowserHost#BookStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 705
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->WARN:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v2, "BrowserHost"

    const-string v3, "BookStatusCalled"

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 708
    :try_start_0
    new-instance v0, Lcom/amazon/kcp/store/BrowserHost$StoreBookPayload;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/store/BrowserHost$StoreBookPayload;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/amazon/kcp/store/BrowserHost$StoreBookPayload;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    if-eqz v0, :cond_4

    .line 711
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v1

    .line 713
    invoke-interface {v1}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 714
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    const/4 v2, 0x0

    .line 717
    sget-object v3, Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;->NO_STATUS:Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;

    invoke-virtual {v3}, Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;->getValue()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    .line 721
    sget-object v3, Lcom/amazon/kcp/store/BrowserHost$2;->$SwitchMap$com$amazon$kindle$model$content$ContentState:[I

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v4, 0x1

    goto :goto_1

    .line 737
    :pswitch_1
    sget-object v1, Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;->QUEUED:Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;

    invoke-virtual {v1}, Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;->getValue()I

    move-result v3

    goto :goto_0

    .line 734
    :pswitch_2
    sget-object v1, Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;->FAILED:Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;

    invoke-virtual {v1}, Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;->getValue()I

    move-result v3

    goto :goto_2

    .line 729
    :pswitch_3
    sget-object v1, Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;->DOWNLOADING:Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;

    invoke-virtual {v1}, Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;->getValue()I

    move-result v3

    :goto_0
    const/4 v4, 0x1

    goto :goto_2

    .line 725
    :pswitch_4
    sget-object v1, Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;->DOWNLOADED:Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;

    invoke-virtual {v1}, Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;->getValue()I

    move-result v3

    const/high16 v2, 0x42c80000    # 100.0f

    goto :goto_2

    .line 744
    :goto_1
    sget-object v1, Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;->NO_STATUS:Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;

    invoke-virtual {v1}, Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;->getValue()I

    move-result v3

    :cond_1
    :goto_2
    if-eqz v4, :cond_3

    .line 749
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDownloadService()Lcom/amazon/kindle/services/download/IDownloadService;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 752
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/amazon/kindle/services/download/IDownloadService;->getContentDownload(Ljava/lang/String;)Lcom/amazon/kindle/services/download/IContentDownload;

    move-result-object v1

    if-nez v1, :cond_2

    .line 754
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Book doesnt have a valid download status - asin:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_3

    .line 756
    :cond_2
    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IContentDownload;->getProgress()J

    move-result-wide v4

    long-to-float v2, v4

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v2, v2, v4

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IContentDownload;->getMaxProgress()J

    move-result-wide v4

    long-to-float v1, v4

    div-float/2addr v2, v1

    .line 761
    :cond_3
    :goto_3
    invoke-direct {p0, v0, v3, v2}, Lcom/amazon/kcp/store/BrowserHost;->nativeStatusUpdate(Lcom/amazon/kindle/model/content/IBookID;IF)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 765
    :catch_0
    sget-object v0, Lcom/amazon/kcp/store/BrowserHost;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing jsonBookID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public checkTODO(Ljava/lang/String;)V
    .locals 4

    .line 523
    invoke-virtual {p0}, Lcom/amazon/kcp/store/BrowserHost;->isAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 527
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BrowserHost#checkTODO: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 529
    :try_start_0
    new-instance v0, Lcom/amazon/kcp/store/BrowserHost$StoreBookPayload;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/store/BrowserHost$StoreBookPayload;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/amazon/kcp/store/BrowserHost$StoreBookPayload;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    .line 532
    invoke-static {}, Lcom/amazon/kcp/store/StoreDiscoveryEntryPoints;->getInstance()Lcom/amazon/kcp/store/StoreDiscoveryEntryPointsInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/store/StoreDiscoveryEntryPointsInterface;->getStoreBookHelper()Lcom/amazon/kindle/store/StoreBookHelper;

    move-result-object v1

    .line 533
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kcp/library/models/BookType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/amazon/kindle/store/StoreBookHelper;->syncAndDownload(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 534
    sget-object v1, Lcom/amazon/kcp/store/BrowserHost;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t complete sync and download"

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerSingleton;->getInstance()Lcom/amazon/kcp/home/feeds/HomeFeedManager;

    move-result-object v1

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/amazon/kcp/home/feeds/HomeFeedManager;->onStorePurchase(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 538
    :catch_0
    sget-object v0, Lcom/amazon/kcp/store/BrowserHost;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing jsonBookID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public closeAndGoto(Ljava/lang/String;)V
    .locals 4

    .line 489
    invoke-virtual {p0}, Lcom/amazon/kcp/store/BrowserHost;->isAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 493
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->WARN:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v2, "BrowserHost"

    const-string v3, "CloseAndGotoCalled"

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    const-string v0, "//home/books"

    .line 495
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 496
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryView;->HOME:Lcom/amazon/kindle/krx/library/LibraryView;

    invoke-interface {p1, v0}, Lcom/amazon/kcp/library/ILibraryController;->showLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;)V

    .line 498
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/store/BrowserHost;->store:Lcom/amazon/kcp/store/listener/StoreInterface;

    invoke-interface {p1}, Lcom/amazon/kcp/store/listener/StoreInterface;->finish()V

    return-void
.end method

.method public closeStore()V
    .locals 4

    .line 472
    invoke-virtual {p0}, Lcom/amazon/kcp/store/BrowserHost;->isAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 477
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->WARN:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v2, "BrowserHost"

    const-string v3, "CloseStoreCalled"

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 478
    iget-object v0, p0, Lcom/amazon/kcp/store/BrowserHost;->store:Lcom/amazon/kcp/store/listener/StoreInterface;

    invoke-interface {v0}, Lcom/amazon/kcp/store/listener/StoreInterface;->finish()V

    return-void
.end method

.method public dismissKeyboard()V
    .locals 3

    .line 842
    invoke-virtual {p0}, Lcom/amazon/kcp/store/BrowserHost;->isAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 847
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/store/BrowserHost;->store:Lcom/amazon/kcp/store/listener/StoreInterface;

    invoke-interface {v0}, Lcom/amazon/kcp/store/listener/StoreInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 848
    iget-object v1, p0, Lcom/amazon/kcp/store/BrowserHost;->store:Lcom/amazon/kcp/store/listener/StoreInterface;

    invoke-interface {v1}, Lcom/amazon/kcp/store/listener/StoreInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public downloadAndOpenBookWithBookData(Ljava/lang/String;)V
    .locals 4

    .line 581
    invoke-virtual {p0}, Lcom/amazon/kcp/store/BrowserHost;->isAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 585
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BrowserHost#downloadAndOpenBookWithBookData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 589
    :try_start_0
    new-instance v0, Lcom/amazon/kcp/store/BrowserHost$StoreBookData;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/store/BrowserHost$StoreBookData;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    new-instance p1, Lcom/amazon/kcp/store/BrowserHost$StoreBookPayload$BookMetadata;

    const-string v1, ""

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/amazon/kcp/store/BrowserHost$StoreBookPayload$BookMetadata;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 596
    iget-object v1, v0, Lcom/amazon/kcp/store/BrowserHost$StoreBookData;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    iget-object v0, v0, Lcom/amazon/kcp/store/BrowserHost$StoreBookData;->isFalkorEpisode:Ljava/lang/Boolean;

    invoke-direct {p0, v1, p1, v0}, Lcom/amazon/kcp/store/BrowserHost;->openStoreBook(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kcp/store/BrowserHost$StoreBookPayload$BookMetadata;Ljava/lang/Boolean;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 591
    :goto_0
    sget-object v1, Lcom/amazon/kcp/store/BrowserHost;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing inputBookData "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getBrowserHostJavascript()Ljava/lang/String;
    .locals 1

    .line 934
    iget-object v0, p0, Lcom/amazon/kcp/store/BrowserHost;->browserhostJavaScript:Ljava/lang/String;

    return-object v0
.end method

.method public getJSONJavascript()Ljava/lang/String;
    .locals 1

    .line 927
    iget-object v0, p0, Lcom/amazon/kcp/store/BrowserHost;->jsonJavaScript:Ljava/lang/String;

    return-object v0
.end method

.method public getJavascriptPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "KindleAndroidReader_BrowserHost_"

    return-object v0
.end method

.method public goToLauncher()V
    .locals 2

    .line 507
    invoke-virtual {p0}, Lcom/amazon/kcp/store/BrowserHost;->isAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 511
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 512
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 513
    iget-object v1, p0, Lcom/amazon/kcp/store/BrowserHost;->store:Lcom/amazon/kcp/store/listener/StoreInterface;

    invoke-interface {v1}, Lcom/amazon/kcp/store/listener/StoreInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public injectJavaScript(Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 2

    .line 915
    iget-object v0, p0, Lcom/amazon/kcp/store/BaseJavascriptHost;->jsWrapper:Lcom/amazon/kcp/store/IWebViewJSWrapper;

    invoke-virtual {p0}, Lcom/amazon/kcp/store/BrowserHost;->getJSONJavascript()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/store/IWebViewJSWrapper;->execute(Ljava/lang/String;)V

    .line 917
    iget-object v0, p0, Lcom/amazon/kcp/store/BaseJavascriptHost;->jsWrapper:Lcom/amazon/kcp/store/IWebViewJSWrapper;

    invoke-virtual {p0}, Lcom/amazon/kcp/store/BrowserHost;->getBrowserHostJavascript()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/store/IWebViewJSWrapper;->execute(Ljava/lang/String;)V

    .line 920
    invoke-direct/range {p0 .. p5}, Lcom/amazon/kcp/store/BrowserHost;->kindleReady(Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void
.end method

.method public isAllowed()Z
    .locals 3

    .line 428
    iget-object v0, p0, Lcom/amazon/kcp/store/BrowserHost;->store:Lcom/amazon/kcp/store/listener/StoreInterface;

    invoke-interface {v0}, Lcom/amazon/kcp/store/listener/IWebViewJavascriptInjector;->getCurrentUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/store/DomainPermissions;->fromUrl(Ljava/lang/String;)Lcom/amazon/kcp/store/DomainPermissions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/store/DomainPermissions;->isJavascriptAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 430
    sget-object v1, Lcom/amazon/kcp/store/BrowserHost;->TAG:Ljava/lang/String;

    const-string v2, "Javascript API called but not allowed"

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    :cond_0
    return v0
.end method

.method public isTOSOpened()Z
    .locals 1

    .line 938
    iget-boolean v0, p0, Lcom/amazon/kcp/store/BrowserHost;->isTOSOpened:Z

    return v0
.end method

.method public launchBOTMLearnMore(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public nativeBackClicked()V
    .locals 2

    .line 801
    iget-object v0, p0, Lcom/amazon/kcp/store/BaseJavascriptHost;->jsWrapper:Lcom/amazon/kcp/store/IWebViewJSWrapper;

    const-string v1, "(function(){BrowserHost.nativeBackClicked();})()"

    invoke-interface {v0, v1}, Lcom/amazon/kcp/store/IWebViewJSWrapper;->execute(Ljava/lang/String;)V

    return-void
.end method

.method public nativeForwardClicked()V
    .locals 2

    .line 808
    iget-object v0, p0, Lcom/amazon/kcp/store/BaseJavascriptHost;->jsWrapper:Lcom/amazon/kcp/store/IWebViewJSWrapper;

    const-string v1, "(function(){BrowserHost.nativeForwardClicked();})()"

    invoke-interface {v0, v1}, Lcom/amazon/kcp/store/IWebViewJSWrapper;->execute(Ljava/lang/String;)V

    return-void
.end method

.method public nativeMenuClicked()V
    .locals 2

    .line 815
    iget-object v0, p0, Lcom/amazon/kcp/store/BaseJavascriptHost;->jsWrapper:Lcom/amazon/kcp/store/IWebViewJSWrapper;

    const-string v1, "(function(){BrowserHost.nativeMenuClicked();})()"

    invoke-interface {v0, v1}, Lcom/amazon/kcp/store/IWebViewJSWrapper;->execute(Ljava/lang/String;)V

    return-void
.end method

.method public onStoreFullyLoaded()V
    .locals 0

    return-void
.end method

.method public openArticle(Ljava/lang/String;)V
    .locals 4

    .line 640
    invoke-virtual {p0}, Lcom/amazon/kcp/store/BrowserHost;->isAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 644
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BrowserHost#openArticle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 646
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "articleMetadataList"

    .line 647
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 648
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 649
    iget-object v0, p0, Lcom/amazon/kcp/store/BrowserHost;->store:Lcom/amazon/kcp/store/listener/StoreInterface;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/store/listener/StoreInterface;->openArticle(Ljava/lang/String;)V

    goto :goto_0

    .line 651
    :cond_1
    sget-object v0, Lcom/amazon/kcp/store/BrowserHost;->TAG:Ljava/lang/String;

    const-string v1, "open Article Action is not supported for payload [%s], aborting..."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 655
    sget-object v1, Lcom/amazon/kcp/store/BrowserHost;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing jsonParameters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public openBook(Ljava/lang/String;)V
    .locals 3

    .line 555
    invoke-virtual {p0}, Lcom/amazon/kcp/store/BrowserHost;->isAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 559
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BrowserHost#openBook: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 563
    :try_start_0
    new-instance v0, Lcom/amazon/kcp/store/BrowserHost$StoreBookPayload;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/store/BrowserHost$StoreBookPayload;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    iget-object p1, v0, Lcom/amazon/kcp/store/BrowserHost$StoreBookPayload;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    iget-object v0, v0, Lcom/amazon/kcp/store/BrowserHost$StoreBookPayload;->metadata:Lcom/amazon/kcp/store/BrowserHost$StoreBookPayload$BookMetadata;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/kcp/store/BrowserHost;->openStoreBook(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kcp/store/BrowserHost$StoreBookPayload$BookMetadata;Ljava/lang/Boolean;)V

    return-void

    .line 565
    :catch_0
    sget-object v0, Lcom/amazon/kcp/store/BrowserHost;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing inputPayload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public openExternalUrlsInternally(Ljava/lang/String;)V
    .locals 1

    .line 685
    invoke-virtual {p0}, Lcom/amazon/kcp/store/BrowserHost;->isAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/store/BrowserHost;->store:Lcom/amazon/kcp/store/listener/StoreInterface;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/amazon/kcp/store/listener/StoreInterface;->openExternalUrlsInternally(Z)V

    return-void
.end method

.method public openInExternalBrowser(Ljava/lang/String;)V
    .locals 4

    .line 665
    invoke-virtual {p0}, Lcom/amazon/kcp/store/BrowserHost;->isAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 669
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BrowserHost#OpenInExternalBrowser: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 670
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->WARN:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v2, "BrowserHost"

    const-string v3, "OpenInExternalBrowserCalled"

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 672
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 673
    iget-object v0, p0, Lcom/amazon/kcp/store/BrowserHost;->store:Lcom/amazon/kcp/store/listener/StoreInterface;

    invoke-interface {v0}, Lcom/amazon/kcp/store/listener/StoreInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kcp/application/IKindleApplicationController;->openUrl(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public pageReady()V
    .locals 4

    .line 452
    invoke-virtual {p0}, Lcom/amazon/kcp/store/BrowserHost;->isAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 456
    :cond_0
    sget-object v0, Lcom/amazon/kcp/store/BrowserHost;->TAG:Ljava/lang/String;

    const-string v1, "BrowserHost#PageReady"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->WARN:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v2, "BrowserHost"

    const-string v3, "PageReadyCalled"

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 461
    iget-object v0, p0, Lcom/amazon/kcp/store/BrowserHost;->store:Lcom/amazon/kcp/store/listener/StoreInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/store/listener/StoreInterface;->setStoreLoaded(Z)V

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public reportMetrics(Ljava/lang/String;)V
    .locals 6

    .line 879
    invoke-virtual {p0}, Lcom/amazon/kcp/store/BrowserHost;->isAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 883
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BrowserHost#ReportMetrics: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 885
    :try_start_0
    new-instance v0, Lcom/amazon/kcp/store/StoreMetric;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/store/StoreMetric;-><init>(Ljava/lang/String;)V

    .line 886
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    .line 888
    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreMetric;->getMetrics()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/store/StoreMetric$Metric;

    const-string v3, "BrowserHost"

    .line 889
    invoke-virtual {v2}, Lcom/amazon/kcp/store/StoreMetric$Metric;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/amazon/kcp/store/StoreMetric$Metric;->getMetricType()Lcom/amazon/kindle/krx/metrics/MetricType;

    move-result-object v5

    invoke-virtual {v2}, Lcom/amazon/kcp/store/StoreMetric$Metric;->getMetricsData()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 892
    sget-object v1, Lcom/amazon/kcp/store/BrowserHost;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing jsonMetrics: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public savePreferences(Ljava/lang/String;)V
    .locals 3

    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BrowserHost#SavePreferences: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 864
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->WARN:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v1, "BrowserHost"

    const-string v2, "SavePreferencesCalled"

    invoke-virtual {p1, v1, v2, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    return-void
.end method

.method public shareBook(Ljava/lang/String;)V
    .locals 2

    .line 626
    invoke-virtual {p0}, Lcom/amazon/kcp/store/BrowserHost;->isAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 630
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getShareHelper()Lcom/amazon/kcp/reader/IShareHelper;

    move-result-object v0

    .line 631
    iget-object v1, p0, Lcom/amazon/kcp/store/BrowserHost;->store:Lcom/amazon/kcp/store/listener/StoreInterface;

    invoke-interface {v1}, Lcom/amazon/kcp/store/listener/StoreInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/amazon/kcp/reader/IShareHelper;->share(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public shouldFollowOrderSOP(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 3

    .line 998
    invoke-virtual {p0}, Lcom/amazon/kcp/store/BrowserHost;->isAllowed()Z

    move-result v0

    const-string/jumbo v1, "true"

    if-nez v0, :cond_0

    return-object v1

    .line 1002
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    if-eqz p3, :cond_2

    .line 1007
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_2

    .line 1008
    invoke-virtual {p3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_2
    const-string/jumbo p3, "undefined"

    .line 1011
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/store/BaseJavascriptHost;->jsWrapper:Lcom/amazon/kcp/store/IWebViewJSWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(function(){submitKindleOrder(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ");})()"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    iget-object v1, p0, Lcom/amazon/kcp/store/BrowserHost;->store:Lcom/amazon/kcp/store/listener/StoreInterface;

    invoke-interface {v1}, Lcom/amazon/kcp/store/listener/IWebViewJavascriptInjector;->getCurrentUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, p2, p3, v1, v2}, Lcom/amazon/kcp/store/IWebViewJSWrapper;->execute(Ljava/lang/String;ZLjava/lang/String;Z)V

    const-string p2, "FREE_CHAPTER"

    .line 1012
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1013
    iget-object p1, p0, Lcom/amazon/kcp/store/BrowserHost;->store:Lcom/amazon/kcp/store/listener/StoreInterface;

    invoke-interface {p1}, Lcom/amazon/kcp/store/listener/StoreInterface;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/amazon/kcp/store/R$string;->free_chapter_to_login_msg:I

    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_3
    const-string p1, ""

    return-object p1
.end method

.method public toggleForward(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public toggleMenu(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
