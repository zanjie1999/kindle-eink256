.class public Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;
.super Ljava/lang/Object;
.source "HttpConfiguration.java"


# static fields
.field public static final DEFAULT_WAKE_LOCK_TIMEOUT_MILLIS:J


# instance fields
.field private final mConnectTimeout:I

.field private final mHttpRequestSignerType:Lcom/amazon/client/metrics/thirdparty/configuration/HttpRequestSignerType;

.field private final mReadTimeout:I

.field private final mStaticCredentialUrlEndpoint:Ljava/lang/String;

.field private final mUrlEndpoint:Ljava/lang/String;

.field private final mWakeLockTimeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 21
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;->DEFAULT_WAKE_LOCK_TIMEOUT_MILLIS:J

    return-void
.end method

.method public constructor <init>(Lcom/amazon/client/metrics/thirdparty/configuration/HttpRequestSignerType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;
        }
    .end annotation

    .line 59
    sget-wide v6, Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;->DEFAULT_WAKE_LOCK_TIMEOUT_MILLIS:J

    const/16 v4, 0x2710

    const/16 v5, 0x2710

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;-><init>(Lcom/amazon/client/metrics/thirdparty/configuration/HttpRequestSignerType;Ljava/lang/String;Ljava/lang/String;IIJ)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/client/metrics/thirdparty/configuration/HttpRequestSignerType;Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    const-string v0, "UrlEndpoint is null in configuration"

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    if-ltz p4, :cond_0

    if-ltz p5, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v2, p6, v0

    if-ltz v2, :cond_0

    .line 105
    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;->mHttpRequestSignerType:Lcom/amazon/client/metrics/thirdparty/configuration/HttpRequestSignerType;

    .line 106
    iput-object p2, p0, Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;->mUrlEndpoint:Ljava/lang/String;

    .line 107
    iput-object p3, p0, Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;->mStaticCredentialUrlEndpoint:Ljava/lang/String;

    .line 108
    iput p4, p0, Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;->mConnectTimeout:I

    .line 109
    iput p5, p0, Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;->mReadTimeout:I

    .line 110
    iput-wide p6, p0, Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;->mWakeLockTimeout:J

    return-void

    .line 102
    :cond_0
    new-instance p1, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;

    const-string p2, "Negative timeout in configuration"

    invoke-direct {p1, p2}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 98
    :cond_1
    new-instance p1, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;

    invoke-direct {p1, v0}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 94
    :cond_2
    new-instance p1, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;

    invoke-direct {p1, v0}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_3
    new-instance p1, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;

    const-string p2, "HttpRequestSignerType is null in configuration"

    invoke-direct {p1, p2}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getConnectTimeout()I
    .locals 1

    .line 150
    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;->mConnectTimeout:I

    return v0
.end method

.method public getHttpRequestSignerType()Lcom/amazon/client/metrics/thirdparty/configuration/HttpRequestSignerType;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;->mHttpRequestSignerType:Lcom/amazon/client/metrics/thirdparty/configuration/HttpRequestSignerType;

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .line 164
    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;->mReadTimeout:I

    return v0
.end method

.method public getStaticCredentialUrlEndpoint()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;->mStaticCredentialUrlEndpoint:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlEndpoint()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;->mUrlEndpoint:Ljava/lang/String;

    return-object v0
.end method

.method public getWakeLockTimeout()J
    .locals 2

    .line 175
    iget-wide v0, p0, Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;->mWakeLockTimeout:J

    return-wide v0
.end method
