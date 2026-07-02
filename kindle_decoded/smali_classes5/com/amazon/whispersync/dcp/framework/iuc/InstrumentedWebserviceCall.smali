.class public final Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall;
.super Ljava/lang/Object;
.source "InstrumentedWebserviceCall.java"

# interfaces
.implements Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCall;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall$Factory;
    }
.end annotation


# static fields
.field private static final CONNECTION_TIMEOUT_SEC:Lcom/amazon/whispersync/dcp/settings/SettingLong;

.field private static final CONNECTIVITY_TIMEOUT_SEC:Lcom/amazon/whispersync/dcp/settings/SettingLong;

.field private static final MAX_RETRIES_NUMBER:Lcom/amazon/whispersync/dcp/settings/SettingInteger;


# instance fields
.field private mConnectionBuilderFactory:Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder$Factory;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private final mDcpAuthMethod:Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthMethod;

.field private mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private mMetricNameGenerator:Lcom/amazon/whispersync/dcp/framework/iuc/MetricNameGenerator;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private final mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

.field private final mWebServiceCallback:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 59
    new-instance v0, Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    const-string v1, "MAX_URL_CONNECTION_RETRIES"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall;->MAX_RETRIES_NUMBER:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    .line 60
    new-instance v0, Lcom/amazon/whispersync/dcp/settings/SettingLong;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x2

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    const-string v3, "WAIT_FOR_CONNECTIVITY_TIMEOUT"

    invoke-direct {v0, v3, v1, v2}, Lcom/amazon/whispersync/dcp/settings/SettingLong;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall;->CONNECTIVITY_TIMEOUT_SEC:Lcom/amazon/whispersync/dcp/settings/SettingLong;

    .line 62
    new-instance v0, Lcom/amazon/whispersync/dcp/settings/SettingLong;

    const-string v1, "CONNECTION_TIMEOUT"

    const-wide/16 v2, 0x1e

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/whispersync/dcp/settings/SettingLong;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall;->CONNECTION_TIMEOUT_SEC:Lcom/amazon/whispersync/dcp/settings/SettingLong;

    return-void
.end method

.method private constructor <init>(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthMethod;)V
    .locals 4

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-class v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "webRequest may not be null"

    invoke-static {p1, v0, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    const-class v0, Ljava/lang/IllegalArgumentException;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "callback may not be null"

    invoke-static {p2, v0, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    const-class v0, Ljava/lang/IllegalArgumentException;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "auth method may not be null"

    invoke-static {p3, v0, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    invoke-virtual {p3}, Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthMethod;->getDcpAuthType()Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthType;

    move-result-object v0

    const-class v2, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "auth type may not be null"

    invoke-static {v0, v2, v3, v1}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    .line 84
    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall;->mWebServiceCallback:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;

    .line 85
    iput-object p3, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall;->mDcpAuthMethod:Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthMethod;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthMethod;Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall$1;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall;-><init>(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthMethod;)V

    return-void
.end method

.method private createConnectionFromRequest()Ljava/net/HttpURLConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall;->getRequestURL()Ljava/net/URL;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall;->mConnectionBuilderFactory:Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder$Factory;

    invoke-virtual {v1, v0}, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder$Factory;->create(Ljava/net/URL;)Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;

    move-result-object v1

    .line 122
    invoke-direct {p0, v1}, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall;->enableCompressionIfRequired(Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;)V

    .line 123
    invoke-direct {p0, v1}, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall;->enableAuthenticationIfRequired(Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;)V

    .line 124
    sget-object v2, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall;->MAX_RETRIES_NUMBER:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    invoke-virtual {v2}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->withRetryLogic(I)Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;

    .line 125
    sget-object v2, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall;->CONNECTIVITY_TIMEOUT_SEC:Lcom/amazon/whispersync/dcp/settings/SettingLong;

    invoke-virtual {v2}, Lcom/amazon/whispersync/dcp/settings/SettingLong;->getValue()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->withConnectivityEnforced(JLjava/util/concurrent/TimeUnit;)Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;

    .line 126
    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall;->mMetricNameGenerator:Lcom/amazon/whispersync/dcp/framework/iuc/MetricNameGenerator;

    iget-object v3, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    invoke-virtual {v3}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->getVerbAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/amazon/whispersync/dcp/framework/iuc/MetricNameGenerator;->generateMetricNameFromNonRestUrl(Ljava/lang/String;Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->withMetrics(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;

    .line 127
    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->withIdentifier()Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;

    .line 128
    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->withStandardAmazonHeaders()Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;

    .line 130
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v2, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall;->CONNECTION_TIMEOUT_SEC:Lcom/amazon/whispersync/dcp/settings/SettingLong;

    invoke-virtual {v2}, Lcom/amazon/whispersync/dcp/settings/SettingLong;->getValue()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    long-to-int v0, v2

    .line 131
    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->build()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 132
    invoke-direct {p0, v1}, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall;->setupRequestHeadersIfRequired(Ljava/net/HttpURLConnection;)V

    .line 133
    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 134
    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 136
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->getVerbAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 137
    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    return-object v1
.end method

.method private enableAuthenticationIfRequired(Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->getAuthenticationRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall;->mDcpAuthMethod:Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthMethod;

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->withAuthMethod(Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthMethod;)Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;

    :cond_0
    return-void
.end method

.method private enableCompressionIfRequired(Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->getCompressionRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->withCompression()Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;

    :cond_0
    return-void
.end method

.method private getRequestURL()Ljava/net/URL;
    .locals 4

    .line 146
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    invoke-virtual {v1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 150
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse the following as a URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    invoke-virtual {v3}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getResponseStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 0

    .line 254
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 258
    :catch_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method private readInput(ILjava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x4000

    new-array v1, v1, [B

    .line 273
    invoke-virtual {p2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    :goto_0
    const/4 v3, -0x1

    if-le v2, v3, :cond_1

    .line 276
    iget-object v3, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall;->mWebServiceCallback:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;

    invoke-interface {v3, v1, v2}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;->onBodyChunkReceived([BI)V

    add-int/2addr v0, v2

    .line 279
    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall;->mWebServiceCallback:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;

    invoke-interface {v2, v0, p1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;->onProgress(II)V

    .line 281
    invoke-virtual {p2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    goto :goto_0

    .line 284
    :cond_1
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method private readResponseBody(Ljava/net/HttpURLConnection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall;->getResponseStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 242
    :try_start_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall;->readInput(ILjava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    invoke-static {v0}, Lcom/amazon/whispersync/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/amazon/whispersync/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw p1
.end method

.method private readResponseHeaders(Ljava/net/HttpURLConnection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 207
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Received response: %d"

    invoke-virtual {v1, v3, v2}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 213
    new-instance v1, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;

    invoke-direct {v1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;-><init>()V

    int-to-long v2, v0

    .line 214
    invoke-virtual {v1, v2, v3}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;->setStatusCode(J)V

    .line 216
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 219
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 226
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 228
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 232
    :cond_2
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall;->mWebServiceCallback:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;

    invoke-interface {p1, v1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;->onHeadersReceived(Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;)V

    return-void

    .line 210
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid response code"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setupRequestHeadersIfRequired(Ljava/net/HttpURLConnection;)V
    .locals 3

    const/4 v0, 0x0

    .line 172
    :goto_0
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    invoke-virtual {v1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->getNumHeaders()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    invoke-virtual {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->getHeaderName(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    invoke-virtual {v2, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->getHeaderValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeBodyIfRequired(Ljava/net/HttpURLConnection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->getBodyLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 185
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v0, 0x0

    .line 189
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 195
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    invoke-virtual {p1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->getBodyBytes()[B

    move-result-object p1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    invoke-virtual {v2}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->getBodyLength()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v0, p1, v1, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    invoke-static {v0}, Lcom/amazon/whispersync/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    return-void

    .line 192
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v1, "Can\'t retrieve output stream"

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 199
    invoke-static {v0}, Lcom/amazon/whispersync/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw p1
.end method


# virtual methods
.method public call()V
    .locals 5

    const/4 v0, 0x0

    .line 94
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall;->createConnectionFromRequest()Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 95
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall;->writeBodyIfRequired(Ljava/net/HttpURLConnection;)V

    .line 97
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall;->readResponseHeaders(Ljava/net/HttpURLConnection;)V

    .line 98
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall;->readResponseBody(Ljava/net/HttpURLConnection;)V

    .line 100
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall;->mWebServiceCallback:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;

    invoke-interface {v1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;->onRequestComplete()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 112
    :goto_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 104
    :try_start_1
    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    const-string v3, "IOException making request"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3, v4}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 106
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedWebserviceCall;->mWebServiceCallback:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;

    invoke-interface {v1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;->onNetworkError()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :goto_1
    return-void

    :goto_2
    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    throw v1
.end method
