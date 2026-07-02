.class public Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;
.super Ljava/lang/Object;
.source "ClientConfiguration.java"


# static fields
.field public static final DEFAULT_RETRY_POLICY:Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy;

.field public static final DEFAULT_USER_AGENT:Ljava/lang/String;


# instance fields
.field private connectionTimeout:I

.field private curlLogging:Z

.field private enableGzip:Z

.field private localAddress:Ljava/net/InetAddress;

.field private maxConnections:I

.field private maxErrorRetry:I

.field private preemptiveBasicProxyAuth:Z

.field private protocol:Lcom/amazon/kindle/com/amazonaws/Protocol;

.field private proxyDomain:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private proxyHost:Ljava/lang/String;

.field private proxyPassword:Ljava/lang/String;

.field private proxyPort:I

.field private proxyUsername:Ljava/lang/String;

.field private proxyWorkstation:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private retryPolicy:Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy;

.field private signerOverride:Ljava/lang/String;

.field private socketReceiveBufferSizeHint:I

.field private socketSendBufferSizeHint:I

.field private socketTimeout:I

.field private trustManager:Ljavax/net/ssl/TrustManager;

.field private useReaper:Z

.field private userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/util/VersionInfoUtils;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->DEFAULT_USER_AGENT:Ljava/lang/String;

    .line 58
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/retry/PredefinedRetryPolicies;->DEFAULT:Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy;

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->DEFAULT_RETRY_POLICY:Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->DEFAULT_USER_AGENT:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->userAgent:Ljava/lang/String;

    const/4 v0, -0x1

    .line 77
    iput v0, p0, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->maxErrorRetry:I

    .line 80
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->DEFAULT_RETRY_POLICY:Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy;

    iput-object v1, p0, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->retryPolicy:Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy;

    .line 91
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/Protocol;->HTTPS:Lcom/amazon/kindle/com/amazonaws/Protocol;

    iput-object v1, p0, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->protocol:Lcom/amazon/kindle/com/amazonaws/Protocol;

    const/4 v1, 0x0

    .line 94
    iput-object v1, p0, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->proxyHost:Ljava/lang/String;

    .line 97
    iput v0, p0, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->proxyPort:I

    .line 103
    iput-object v1, p0, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->proxyUsername:Ljava/lang/String;

    .line 108
    iput-object v1, p0, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->proxyPassword:Ljava/lang/String;

    .line 111
    iput-object v1, p0, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->proxyDomain:Ljava/lang/String;

    .line 115
    iput-object v1, p0, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->proxyWorkstation:Ljava/lang/String;

    const/16 v0, 0xa

    .line 125
    iput v0, p0, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->maxConnections:I

    const/16 v0, 0x3a98

    .line 132
    iput v0, p0, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->socketTimeout:I

    .line 139
    iput v0, p0, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->connectionTimeout:I

    const/4 v0, 0x0

    .line 146
    iput v0, p0, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->socketSendBufferSizeHint:I

    .line 153
    iput v0, p0, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->socketReceiveBufferSizeHint:I

    const/4 v2, 0x1

    .line 161
    iput-boolean v2, p0, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->useReaper:Z

    .line 175
    iput-object v1, p0, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->trustManager:Ljavax/net/ssl/TrustManager;

    .line 180
    iput-boolean v0, p0, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->curlLogging:Z

    .line 185
    iput-boolean v0, p0, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->enableGzip:Z

    return-void
.end method


# virtual methods
.method public getConnectionTimeout()I
    .locals 1

    .line 722
    iget v0, p0, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->connectionTimeout:I

    return v0
.end method

.method public getMaxConnections()I
    .locals 1

    .line 287
    iget v0, p0, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->maxConnections:I

    return v0
.end method

.method public getMaxErrorRetry()I
    .locals 1

    .line 636
    iget v0, p0, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->maxErrorRetry:I

    return v0
.end method

.method public getProtocol()Lcom/amazon/kindle/com/amazonaws/Protocol;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->protocol:Lcom/amazon/kindle/com/amazonaws/Protocol;

    return-object v0
.end method

.method public getRetryPolicy()Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy;
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->retryPolicy:Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy;

    return-object v0
.end method

.method public getSignerOverride()Ljava/lang/String;
    .locals 1

    .line 940
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->signerOverride:Ljava/lang/String;

    return-object v0
.end method

.method public getSocketTimeout()I
    .locals 1

    .line 679
    iget v0, p0, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->socketTimeout:I

    return v0
.end method

.method public getTrustManager()Ljavax/net/ssl/TrustManager;
    .locals 1

    .line 1044
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->trustManager:Ljavax/net/ssl/TrustManager;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public isCurlLogging()Z
    .locals 1

    .line 1079
    iget-boolean v0, p0, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->curlLogging:Z

    return v0
.end method

.method public isEnableGzip()Z
    .locals 1

    .line 1111
    iget-boolean v0, p0, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->enableGzip:Z

    return v0
.end method
