.class public Lcom/amazon/sitb/android/StoreRequest;
.super Ljava/lang/Object;
.source "StoreRequest.java"


# static fields
.field private static final CONNECTION_TIMEOUT:I = 0x2710

.field private static final SOCKET_TIMEOUT:I = 0x2710

.field private static final log:Lcom/amazon/sitb/android/ISamplingLogger;


# instance fields
.field private connectionTimeout:I

.field private final cookies:[Lorg/apache/http/cookie/Cookie;

.field private final metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

.field private final queryParams:[Lorg/apache/http/NameValuePair;

.field private socketTimeout:I

.field private final uri:Ljava/lang/String;

.field private final userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/amazon/sitb/android/StoreRequest;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/StoreRequest;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/sitb/android/metrics/MetricsService;Ljava/lang/String;[Lorg/apache/http/NameValuePair;[Lorg/apache/http/cookie/Cookie;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/amazon/sitb/android/StoreRequest;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    .line 47
    iput-object p2, p0, Lcom/amazon/sitb/android/StoreRequest;->uri:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/amazon/sitb/android/StoreRequest;->queryParams:[Lorg/apache/http/NameValuePair;

    .line 49
    iput-object p4, p0, Lcom/amazon/sitb/android/StoreRequest;->cookies:[Lorg/apache/http/cookie/Cookie;

    .line 50
    invoke-static {}, Lcom/amazon/sitb/android/StoreRequest;->getUserAgent()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/sitb/android/StoreRequest;->userAgent:Ljava/lang/String;

    const/16 p1, 0x2710

    .line 51
    iput p1, p0, Lcom/amazon/sitb/android/StoreRequest;->connectionTimeout:I

    .line 52
    iput p1, p0, Lcom/amazon/sitb/android/StoreRequest;->socketTimeout:I

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/sitb/android/StoreRequest;)[Lorg/apache/http/NameValuePair;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/amazon/sitb/android/StoreRequest;->queryParams:[Lorg/apache/http/NameValuePair;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/sitb/android/StoreRequest;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/amazon/sitb/android/StoreRequest;->uri:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/sitb/android/StoreRequest;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/amazon/sitb/android/StoreRequest;->userAgent:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/sitb/android/StoreRequest;)[Lorg/apache/http/cookie/Cookie;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/amazon/sitb/android/StoreRequest;->cookies:[Lorg/apache/http/cookie/Cookie;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/sitb/android/StoreRequest;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/amazon/sitb/android/StoreRequest;->connectionTimeout:I

    return p0
.end method

.method static synthetic access$500(Lcom/amazon/sitb/android/StoreRequest;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/amazon/sitb/android/StoreRequest;->socketTimeout:I

    return p0
.end method

.method static synthetic access$600()Lcom/amazon/sitb/android/ISamplingLogger;
    .locals 1

    .line 30
    sget-object v0, Lcom/amazon/sitb/android/StoreRequest;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-object v0
.end method

.method private static getUserAgent()Ljava/lang/String;
    .locals 5

    const-string v0, "SITBAndroidReaderModule"

    :try_start_0
    const-string v1, "%s (Android/%s; %s) Kindle/%s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    .line 171
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "DEVICE_TYPE"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "APP_VERSION"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 180
    sget-object v2, Lcom/amazon/sitb/android/StoreRequest;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v3, "RuntimeException in getUserAgent:"

    invoke-interface {v2, v3, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public execute(Z)Lcom/amazon/sitb/android/StoreResponse;
    .locals 13

    .line 96
    sget-object v0, Lcom/amazon/sitb/android/StoreRequest;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REQUEST: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->info(Ljava/lang/String;)V

    .line 98
    new-instance v0, Lcom/amazon/sitb/android/StoreRequest$1;

    .line 99
    const-class v5, Lcom/amazon/sitb/android/StoreRequest;

    iget-object v6, p0, Lcom/amazon/sitb/android/StoreRequest;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    sget-object v7, Lcom/amazon/sitb/android/Metric;->STORE_REQUEST_ATTEMPT:Lcom/amazon/sitb/android/Metric;

    sget-object v8, Lcom/amazon/sitb/android/Metric;->STORE_REQUEST_TIME:Lcom/amazon/sitb/android/Metric;

    sget-object v9, Lcom/amazon/sitb/android/Metric;->STORE_REQUEST_SUCCESS:Lcom/amazon/sitb/android/Metric;

    const-string v4, "Store request"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, v0

    move-object v3, p0

    move v12, p1

    invoke-direct/range {v2 .. v12}, Lcom/amazon/sitb/android/StoreRequest$1;-><init>(Lcom/amazon/sitb/android/StoreRequest;Ljava/lang/String;Ljava/lang/Class;Lcom/amazon/sitb/android/metrics/MetricsService;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Z)V

    .line 156
    invoke-virtual {v0}, Lcom/amazon/sitb/android/metrics/MeasuredTask;->execute()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/sitb/android/StoreResponse;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "URI="

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object v1, p0, Lcom/amazon/sitb/android/StoreRequest;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; QUERY PARAMS="

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v1, p0, Lcom/amazon/sitb/android/StoreRequest;->queryParams:[Lorg/apache/http/NameValuePair;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-static {}, Lcom/amazon/sitb/android/utils/BuildUtils;->isDebugBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "; COOKIES="

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-object v1, p0, Lcom/amazon/sitb/android/StoreRequest;->cookies:[Lorg/apache/http/cookie/Cookie;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "; USER-AGENT="

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object v1, p0, Lcom/amazon/sitb/android/StoreRequest;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
