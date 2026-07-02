.class public Lcom/amazon/kindle/specialOffer/KSOCacheManager;
.super Ljava/lang/Object;
.source "KSOCacheManager.java"

# interfaces
.implements Lcom/amazon/kindle/specialOffer/IKSOCacheManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/specialOffer/KSOCacheManager$KSOWidgetProviderResultResponseHandler;,
        Lcom/amazon/kindle/specialOffer/KSOCacheManager$FetchKSOWidgetTask;,
        Lcom/amazon/kindle/specialOffer/KSOCacheManager$WebserviceKSOImageProviderResultResponseHandler;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x8000

.field private static final EXIST_CAMPAIGN:I = 0x1

.field private static final EXIST_CAMPAIGN_WITH_EXIST_IMAGE:I = 0x3

.field private static final EXIST_CAMPAIGN_WITH_NEW_DATA:I = 0x2

.field private static final FETCH_TIME_INTERVAL:I = 0x3

.field private static final NEW_CAMPAIGN:I = 0x0

.field private static final PARAM_HEIGHT:Ljava/lang/String; = "height"

.field private static final PARAM_SLOTNAME:Ljava/lang/String; = "slotName"

.field private static final PARAM_WIDTH:Ljava/lang/String; = "width"

.field private static final REQUEST_TIMEOUT:I = 0x7530

.field private static final SLOT_NAME:Ljava/lang/String; = "center-1"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private fetchExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private ksoDao:Lcom/amazon/kindle/specialOffer/KSOContentDAO;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lcom/amazon/kindle/specialOffer/KSOCacheManager;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/specialOffer/KSOCacheManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/foundation/internal/IThreadPoolManager;->ExecutorBuilder()Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 66
    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->withPriority(I)Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    const-string v1, "lowPriority_fetchKSOData_worker"

    .line 67
    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->withName(Ljava/lang/String;)Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    .line 68
    invoke-interface {v0}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->buildScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/specialOffer/KSOCacheManager;->fetchExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 70
    iput-object p1, p0, Lcom/amazon/kindle/specialOffer/KSOCacheManager;->context:Landroid/content/Context;

    .line 71
    new-instance p1, Lcom/amazon/kindle/specialOffer/KSOContentDAO;

    iget-object v0, p0, Lcom/amazon/kindle/specialOffer/KSOCacheManager;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/amazon/kindle/specialOffer/KSOContentDAO;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/kindle/specialOffer/KSOCacheManager;->ksoDao:Lcom/amazon/kindle/specialOffer/KSOContentDAO;

    .line 73
    iget-object v1, p0, Lcom/amazon/kindle/specialOffer/KSOCacheManager;->fetchExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/amazon/kindle/specialOffer/KSOCacheManager$FetchKSOWidgetTask;

    invoke-direct {v2, p0}, Lcom/amazon/kindle/specialOffer/KSOCacheManager$FetchKSOWidgetTask;-><init>(Lcom/amazon/kindle/specialOffer/KSOCacheManager;)V

    sget-object v7, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/specialOffer/KSOCacheManager;)Lcom/amazon/kindle/specialOffer/KSOContentDAO;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/amazon/kindle/specialOffer/KSOCacheManager;->ksoDao:Lcom/amazon/kindle/specialOffer/KSOContentDAO;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 46
    sget-object v0, Lcom/amazon/kindle/specialOffer/KSOCacheManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/kindle/specialOffer/KSOCacheManager;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/amazon/kindle/specialOffer/KSOCacheManager;->deleteAllInvalidCampaignData()V

    return-void
.end method

.method static synthetic access$300(IILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 46
    invoke-static {p0, p1, p2}, Lcom/amazon/kindle/specialOffer/KSOCacheManager;->createRequestURL(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/kindle/specialOffer/KSOCacheManager;Ljava/lang/String;)Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/amazon/kindle/specialOffer/KSOCacheManager;->parseMetadata(Ljava/lang/String;)Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/kindle/specialOffer/KSOCacheManager;Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;)I
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/amazon/kindle/specialOffer/KSOCacheManager;->getDataStatusInCache(Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/amazon/kindle/specialOffer/KSOCacheManager;Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;Ljava/lang/String;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/specialOffer/KSOCacheManager;->fetchImageFromService(Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;Ljava/lang/String;I)V

    return-void
.end method

.method private static createRequestURL(IILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 277
    invoke-static {}, Lcom/amazon/kindle/webservices/KindleWebServiceURLs;->getKindleSpecialOfferURL()Lcom/amazon/kindle/webservices/WebserviceURL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/webservices/WebserviceURL;->getFullURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 278
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 279
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "width"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 280
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "height"

    invoke-virtual {p0, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string p1, "slotName"

    .line 281
    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 282
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 283
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private deleteAllInvalidCampaignData()V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/amazon/kindle/specialOffer/KSOCacheManager;->ksoDao:Lcom/amazon/kindle/specialOffer/KSOContentDAO;

    invoke-virtual {v0}, Lcom/amazon/kindle/specialOffer/KSOContentDAO;->getImagePathOfExpiredCampaign()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 134
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 135
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/specialOffer/KSOCacheManager;->ksoDao:Lcom/amazon/kindle/specialOffer/KSOContentDAO;

    invoke-virtual {v0}, Lcom/amazon/kindle/specialOffer/KSOContentDAO;->deleteExpiredContent()V

    :cond_1
    return-void
.end method

.method private fetchImageFromService(Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;Ljava/lang/String;I)V
    .locals 1

    .line 118
    new-instance v0, Lcom/amazon/kindle/specialOffer/KSOCacheManager$WebserviceKSOImageProviderResultResponseHandler;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/kindle/specialOffer/KSOCacheManager$WebserviceKSOImageProviderResultResponseHandler;-><init>(Lcom/amazon/kindle/specialOffer/KSOCacheManager;Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;Ljava/lang/String;I)V

    .line 119
    new-instance p2, Lcom/amazon/kindle/webservices/BaseWebRequest;

    invoke-virtual {p1}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;->BLOCKING:Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    .line 120
    invoke-virtual {p2, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setPriority(Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object p1

    .line 121
    invoke-interface {p1, v0}, Lcom/amazon/kindle/webservices/IWebRequest;->setResponseHandler(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object p1

    .line 122
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;

    move-result-object p2

    .line 123
    invoke-interface {p2, p1}, Lcom/amazon/kindle/webservices/IWebRequestManager;->addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    return-void
.end method

.method private getDataStatusInCache(Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;)I
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/amazon/kindle/specialOffer/KSOCacheManager;->ksoDao:Lcom/amazon/kindle/specialOffer/KSOContentDAO;

    invoke-virtual {p1}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->getCampaignId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/specialOffer/KSOContentDAO;->getWidgetdataByCompaignId(Ljava/lang/String;)Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 99
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x2

    return p1

    .line 102
    :cond_1
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    :goto_0
    return p1
.end method

.method private parseMetadata(Ljava/lang/String;)Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 293
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 297
    :cond_0
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public getDisplayingCampaign()Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;
    .locals 2

    .line 113
    new-instance v0, Lcom/amazon/kindle/specialOffer/KSODisplayStrategyByCarousel;

    invoke-direct {v0}, Lcom/amazon/kindle/specialOffer/KSODisplayStrategyByCarousel;-><init>()V

    .line 114
    iget-object v1, p0, Lcom/amazon/kindle/specialOffer/KSOCacheManager;->ksoDao:Lcom/amazon/kindle/specialOffer/KSOContentDAO;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/specialOffer/IKSODisplayStrategy;->getDisplayingKSOWidgetData(Lcom/amazon/kindle/specialOffer/KSOContentDAO;)Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;

    move-result-object v0

    return-object v0
.end method

.method public persistToDisk(Ljava/lang/String;[BLjava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    .line 307
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 308
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 309
    new-instance p1, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 310
    :try_start_1
    invoke-virtual {p1, p2}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 311
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 312
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 316
    invoke-static {p1}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception p2

    move-object v0, p1

    goto :goto_2

    :catch_0
    move-object v0, p1

    goto :goto_0

    :catchall_1
    move-exception p2

    goto :goto_2

    :catch_1
    :goto_0
    :try_start_2
    const-string p1, "fail_store_image"

    .line 314
    invoke-virtual {p0, p3, p1}, Lcom/amazon/kindle/specialOffer/KSOCacheManager;->reportKSOMetric(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 316
    invoke-static {v0}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    const/4 p2, 0x0

    :goto_1
    return p2

    :goto_2
    invoke-static {v0}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 317
    throw p2
.end method

.method public reportKSOMetric(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 327
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 328
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v1

    .line 329
    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "customerId"

    .line 330
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "deviceId"

    .line 331
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "campaignId"

    .line 332
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v2, "kso"

    invoke-virtual {p1, v2, p2, v1, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;)V

    return-void
.end method
