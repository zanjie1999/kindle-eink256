.class public Lcom/amazon/kindle/webservices/WebRequestManager;
.super Ljava/lang/Object;
.source "WebRequestManager.java"

# interfaces
.implements Lcom/amazon/kindle/webservices/IWebRequestManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/webservices/WebRequestManager$WebRequestTask;
    }
.end annotation


# static fields
.field private static final DEFAULT_THREAD_FACTORY_NAME:Ljava/lang/String; = "WebRequestManager-webserviceRequest"

.field private static TAG:Ljava/lang/String;

.field private static final requestSequence:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final webRequestExecutor:Lcom/amazon/kindle/webservices/IWebRequestExecutor;

.field private final webRequestWorker:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    const-class v0, Lcom/amazon/kindle/webservices/WebRequestManager;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/webservices/WebRequestManager;->TAG:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/amazon/kindle/webservices/WebRequestManager;->requestSequence:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/application/IAuthenticationManager;Lcom/amazon/kindle/network/INetworkService;Lcom/amazon/kindle/krx/metrics/IMetricsManager;Lcom/amazon/kindle/services/locale/ILocaleManager;Landroid/content/Context;)V
    .locals 7

    .line 56
    new-instance v6, Lcom/amazon/kindle/util/BackgroundThreadFactory;

    const-string v0, "WebRequestManager-webserviceRequest"

    invoke-direct {v6, v0}, Lcom/amazon/kindle/util/BackgroundThreadFactory;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kindle/webservices/WebRequestManager;-><init>(Lcom/amazon/kcp/application/IAuthenticationManager;Lcom/amazon/kindle/network/INetworkService;Lcom/amazon/kindle/krx/metrics/IMetricsManager;Lcom/amazon/kindle/services/locale/ILocaleManager;Landroid/content/Context;Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/application/IAuthenticationManager;Lcom/amazon/kindle/network/INetworkService;Lcom/amazon/kindle/krx/metrics/IMetricsManager;Lcom/amazon/kindle/services/locale/ILocaleManager;Landroid/content/Context;Ljava/util/concurrent/ThreadFactory;)V
    .locals 7

    .line 50
    new-instance v6, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;-><init>(Lcom/amazon/kcp/application/IAuthenticationManager;Lcom/amazon/kindle/network/INetworkService;Lcom/amazon/kindle/krx/metrics/IMetricsManager;Lcom/amazon/kindle/services/locale/ILocaleManager;Landroid/content/Context;)V

    invoke-direct {p0, v6, p6}, Lcom/amazon/kindle/webservices/WebRequestManager;-><init>(Lcom/amazon/kindle/webservices/IWebRequestExecutor;Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/webservices/IWebRequestExecutor;Ljava/util/concurrent/ThreadFactory;)V
    .locals 8

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/amazon/kindle/webservices/WebRequestManager;->webRequestExecutor:Lcom/amazon/kindle/webservices/IWebRequestExecutor;

    .line 44
    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v0, 0x1e

    int-to-long v3, v0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    const/4 v2, 0x2

    const/4 v1, 0x2

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object p1, p0, Lcom/amazon/kindle/webservices/WebRequestManager;->webRequestWorker:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .line 25
    sget-object v0, Lcom/amazon/kindle/webservices/WebRequestManager;->requestSequence:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/webservices/WebRequestManager;Lcom/amazon/kindle/webservices/IWebRequest;Lcom/amazon/kindle/webservices/RequestStatus;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/webservices/WebRequestManager;->publishStatus(Lcom/amazon/kindle/webservices/IWebRequest;Lcom/amazon/kindle/webservices/RequestStatus;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lcom/amazon/kindle/webservices/WebRequestManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazon/kindle/webservices/WebRequestManager;)Lcom/amazon/kindle/webservices/IWebRequestExecutor;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/amazon/kindle/webservices/WebRequestManager;->webRequestExecutor:Lcom/amazon/kindle/webservices/IWebRequestExecutor;

    return-object p0
.end method

.method private publishStatus(Lcom/amazon/kindle/webservices/IWebRequest;Lcom/amazon/kindle/webservices/RequestStatus;)V
    .locals 5

    .line 146
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getStatusAndProgressTracker()Ljava/util/List;

    move-result-object v0

    .line 150
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v1

    const-string v2, " state"

    if-eqz v1, :cond_1

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, "<NoId>"

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getId()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " updated to "

    .line 152
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    .line 154
    :cond_1
    sget-object v1, Lcom/amazon/kindle/webservices/WebRequestManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updated to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-eqz v0, :cond_3

    .line 158
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;

    if-eqz v1, :cond_2

    .line 160
    invoke-interface {v1, p1, p2}, Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;->reportStatus(Lcom/amazon/kindle/webservices/IWebRequest;Lcom/amazon/kindle/webservices/RequestStatus;)V

    goto :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method public addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z
    .locals 3

    if-nez p1, :cond_0

    .line 62
    sget-object p1, Lcom/amazon/kindle/webservices/WebRequestManager;->TAG:Ljava/lang/String;

    const-string v0, "Null request passed in to the download manager"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 65
    :cond_0
    new-instance v0, Lcom/amazon/kindle/webservices/WebRequestManager$WebRequestTask;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/webservices/WebRequestManager$WebRequestTask;-><init>(Lcom/amazon/kindle/webservices/WebRequestManager;Lcom/amazon/kindle/webservices/IWebRequest;)V

    .line 66
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getPriority()Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    move-result-object p1

    sget-object v1, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;->BLOCKING:Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    .line 67
    invoke-virtual {v0}, Lcom/amazon/kindle/webservices/WebRequestManager$WebRequestTask;->run()V

    return v2

    .line 71
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/webservices/WebRequestManager;->webRequestWorker:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {p1, v0}, Lcom/amazon/kindle/util/ThreadPoolExecutorExtensions;->isTaskInQueue(Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 72
    iget-object p1, v0, Lcom/amazon/kindle/webservices/WebRequestManager$WebRequestTask;->request:Lcom/amazon/kindle/webservices/IWebRequest;

    sget-object v1, Lcom/amazon/kindle/webservices/RequestStatus;->QUEUED:Lcom/amazon/kindle/webservices/RequestStatus;

    invoke-direct {p0, p1, v1}, Lcom/amazon/kindle/webservices/WebRequestManager;->publishStatus(Lcom/amazon/kindle/webservices/IWebRequest;Lcom/amazon/kindle/webservices/RequestStatus;)V

    .line 73
    iget-object p1, p0, Lcom/amazon/kindle/webservices/WebRequestManager;->webRequestWorker:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return v2
.end method
