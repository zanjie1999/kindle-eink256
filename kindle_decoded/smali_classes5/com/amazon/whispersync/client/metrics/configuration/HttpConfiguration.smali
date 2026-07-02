.class public Lcom/amazon/whispersync/client/metrics/configuration/HttpConfiguration;
.super Ljava/lang/Object;
.source "HttpConfiguration.java"


# static fields
.field protected static final DEFAULT_HTTP_URL_ENDPOINT_DEVO:Ljava/lang/String; = "https://dp-mont.integ.amazon.com:443"

.field protected static final DEFAULT_HTTP_URL_ENDPOINT_PROD:Ljava/lang/String; = "https://device-metrics-us.amazon.com:443"

.field protected static final DEFAULT_STATIC_CREDENTIAL_HTTP_URL_ENDPOINT:Ljava/lang/String; = "https://device-metrics-us-2.amazon.com:443"


# instance fields
.field private final mHttpRequestSignerType:Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;

.field private final mStaticCredentialUrlEndpoint:Ljava/lang/String;

.field private final mUrlEndpoint:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationException;
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    const-string v0, "UrlEndpoint is null in configuration"

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 29
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/configuration/HttpConfiguration;->mHttpRequestSignerType:Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;

    .line 30
    iput-object p2, p0, Lcom/amazon/whispersync/client/metrics/configuration/HttpConfiguration;->mUrlEndpoint:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/amazon/whispersync/client/metrics/configuration/HttpConfiguration;->mStaticCredentialUrlEndpoint:Ljava/lang/String;

    return-void

    .line 27
    :cond_0
    new-instance p1, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationException;

    invoke-direct {p1, v0}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_1
    new-instance p1, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationException;

    invoke-direct {p1, v0}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_2
    new-instance p1, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationException;

    const-string p2, "HttpRequestSignerType is null in configuration"

    invoke-direct {p1, p2}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getHttpRequestSignerType()Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/configuration/HttpConfiguration;->mHttpRequestSignerType:Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;

    return-object v0
.end method

.method public getStaticCredentialUrlEndpoint()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/configuration/HttpConfiguration;->mStaticCredentialUrlEndpoint:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlEndpoint()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/configuration/HttpConfiguration;->mUrlEndpoint:Ljava/lang/String;

    return-object v0
.end method
