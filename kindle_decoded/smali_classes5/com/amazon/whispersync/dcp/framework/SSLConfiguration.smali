.class public Lcom/amazon/whispersync/dcp/framework/SSLConfiguration;
.super Ljava/lang/Object;
.source "SSLConfiguration.java"


# static fields
.field private static final DEFAULT_HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

.field private static final DEFAULT_SSL_SOCKET_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

.field private static final TAG:Ljava/lang/String; = "com.amazon.whispersync.dcp.framework.SSLConfiguration"

.field private static final TRUST_ALL_HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

.field private static final TRUST_ALL_HOSTS_SOCKET_FACTORY:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/SSLConfiguration;->DEFAULT_HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    .line 21
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/SSLConfiguration;->DEFAULT_SSL_SOCKET_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

    .line 23
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/SSLConfiguration;->getAllTrustingHostNameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/SSLConfiguration;->TRUST_ALL_HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    .line 24
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/SSLConfiguration;->getAllTrustingSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/SSLConfiguration;->TRUST_ALL_HOSTS_SOCKET_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAllTrustingHostNameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 66
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/SSLConfiguration$1;

    invoke-direct {v0}, Lcom/amazon/whispersync/dcp/framework/SSLConfiguration$1;-><init>()V

    return-object v0
.end method

.method private static getAllTrustingSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    .line 79
    new-instance v1, Lcom/amazon/whispersync/dcp/framework/SSLConfiguration$2;

    invoke-direct {v1}, Lcom/amazon/whispersync/dcp/framework/SSLConfiguration$2;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "TLS"

    .line 107
    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 108
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v1, v0, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 109
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 113
    sget-object v2, Lcom/amazon/whispersync/dcp/framework/SSLConfiguration;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not init SSLContext: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private tryChangeDefaults(Ljavax/net/ssl/HostnameVerifier;Ljavax/net/ssl/SSLSocketFactory;)Z
    .locals 2

    .line 49
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    .line 51
    invoke-static {p1}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 55
    :goto_0
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-eq v0, p2, :cond_1

    .line 57
    invoke-static {p2}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto :goto_1

    :cond_1
    move v1, p1

    :goto_1
    return v1
.end method


# virtual methods
.method public toggleTrustSSLHosts(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 31
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/SSLConfiguration;->TRUST_ALL_HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/SSLConfiguration;->TRUST_ALL_HOSTS_SOCKET_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

    invoke-direct {p0, v0, v1}, Lcom/amazon/whispersync/dcp/framework/SSLConfiguration;->tryChangeDefaults(Ljavax/net/ssl/HostnameVerifier;Ljavax/net/ssl/SSLSocketFactory;)Z

    move-result v0

    goto :goto_0

    .line 35
    :cond_0
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/SSLConfiguration;->DEFAULT_HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/SSLConfiguration;->DEFAULT_SSL_SOCKET_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

    invoke-direct {p0, v0, v1}, Lcom/amazon/whispersync/dcp/framework/SSLConfiguration;->tryChangeDefaults(Ljavax/net/ssl/HostnameVerifier;Ljavax/net/ssl/SSLSocketFactory;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    .line 40
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/SSLConfiguration;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Toggling trust all ssl hosts. New Value: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
