.class public Lcom/amazon/whispersync/client/metrics/transport/HttpClientFactory;
.super Ljava/lang/Object;
.source "HttpClientFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/client/metrics/transport/HttpClientFactory$Protocol;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHttpClient(Ljava/lang/String;)Lorg/apache/http/client/HttpClient;
    .locals 0

    .line 60
    invoke-static {p0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object p0

    return-object p0
.end method

.method public static getSecureHttpClient(Ljava/lang/String;)Lorg/apache/http/client/HttpClient;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 82
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v0

    .line 83
    sget-object v1, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 89
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 90
    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    const-string v2, "UTF-8"

    .line 91
    invoke-static {v1, v2}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 92
    invoke-static {v1, p0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 97
    new-instance p0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {p0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 99
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    sget-object v3, Lcom/amazon/whispersync/client/metrics/transport/HttpClientFactory$Protocol;->HTTPS:Lcom/amazon/whispersync/client/metrics/transport/HttpClientFactory$Protocol;

    invoke-virtual {v3}, Lcom/amazon/whispersync/client/metrics/transport/HttpClientFactory$Protocol;->getScheme()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/whispersync/client/metrics/transport/HttpClientFactory$Protocol;->HTTPS:Lcom/amazon/whispersync/client/metrics/transport/HttpClientFactory$Protocol;

    invoke-virtual {v4}, Lcom/amazon/whispersync/client/metrics/transport/HttpClientFactory$Protocol;->getPort()I

    move-result v4

    invoke-direct {v2, v3, v0, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {p0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 101
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    sget-object v3, Lcom/amazon/whispersync/client/metrics/transport/HttpClientFactory$Protocol;->HTTP:Lcom/amazon/whispersync/client/metrics/transport/HttpClientFactory$Protocol;

    invoke-virtual {v3}, Lcom/amazon/whispersync/client/metrics/transport/HttpClientFactory$Protocol;->getScheme()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/whispersync/client/metrics/transport/HttpClientFactory$Protocol;->HTTP:Lcom/amazon/whispersync/client/metrics/transport/HttpClientFactory$Protocol;

    invoke-virtual {v4}, Lcom/amazon/whispersync/client/metrics/transport/HttpClientFactory$Protocol;->getPort()I

    move-result v4

    invoke-direct {v2, v3, v0, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {p0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 104
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v1, p0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    invoke-direct {v0, v2, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object v0
.end method
