.class public Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithExternalConnectionFactory;
.super Ljava/lang/Object;
.source "ConnectionEstablisherWithExternalConnectionFactory.java"

# interfaces
.implements Lcom/amazon/messaging/odot/webservices/ConnectionEstablisher;


# instance fields
.field private mConnection:Ljava/net/URLConnection;

.field private final mExternalFactory:Lcom/amazon/messaging/odot/webservices/ExternalConnectionFactory;

.field private final mLogger:Lcom/amazon/messaging/odot/webservices/ConnectionLogger;


# direct methods
.method public constructor <init>(Lcom/amazon/messaging/odot/webservices/ExternalConnectionFactory;Lcom/amazon/messaging/odot/webservices/ConnectionLogger;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 25
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithExternalConnectionFactory;->mExternalFactory:Lcom/amazon/messaging/odot/webservices/ExternalConnectionFactory;

    .line 26
    iput-object p2, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithExternalConnectionFactory;->mLogger:Lcom/amazon/messaging/odot/webservices/ConnectionLogger;

    return-void

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithExternalConnectionFactory;[B)Ljava/net/URLConnection;
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithExternalConnectionFactory;->doEstablishConnectionWithBody([B)Ljava/net/URLConnection;

    move-result-object p0

    return-object p0
.end method

.method private doEstablishConnectionWithBody([B)Ljava/net/URLConnection;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 63
    :try_start_0
    array-length v1, p1

    if-lez v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithExternalConnectionFactory;->mConnection:Ljava/net/URLConnection;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithExternalConnectionFactory;->mConnection:Ljava/net/URLConnection;

    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 71
    iget-object p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithExternalConnectionFactory;->mConnection:Ljava/net/URLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 73
    :try_start_1
    iget-object v1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithExternalConnectionFactory;->mConnection:Ljava/net/URLConnection;

    iget-object v2, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithExternalConnectionFactory;->mLogger:Lcom/amazon/messaging/odot/webservices/ConnectionLogger;

    invoke-static {v1, p1, v2}, Lcom/amazon/messaging/odot/webservices/FailedConnection;->create(Ljava/net/URLConnection;Ljava/io/IOException;Lcom/amazon/messaging/odot/webservices/ConnectionLogger;)Lcom/amazon/messaging/odot/webservices/FailedConnection;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    return-object p1

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 76
    throw p1
.end method


# virtual methods
.method public establish(Lcom/amazon/messaging/odot/webservices/ConnectionFactory;)Ljava/net/URLConnection;
    .locals 2

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithExternalConnectionFactory;->mExternalFactory:Lcom/amazon/messaging/odot/webservices/ExternalConnectionFactory;

    invoke-interface {p1}, Lcom/amazon/messaging/odot/webservices/ConnectionFactory;->getTargetURL()Ljava/net/URL;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/messaging/odot/webservices/ExternalConnectionFactory;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    .line 39
    new-instance v1, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;

    invoke-direct {v1, v0}, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;-><init>(Ljava/net/URLConnection;)V

    .line 41
    instance-of v0, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    .line 42
    iput-object v1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithExternalConnectionFactory;->mConnection:Ljava/net/URLConnection;

    goto :goto_0

    .line 44
    :cond_0
    new-instance v0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;

    invoke-direct {v0, v1}, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;-><init>(Ljava/net/URLConnection;)V

    iput-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithExternalConnectionFactory;->mConnection:Ljava/net/URLConnection;

    .line 47
    :goto_0
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithExternalConnectionFactory;->mConnection:Ljava/net/URLConnection;

    invoke-interface {p1, v0}, Lcom/amazon/messaging/odot/webservices/ConnectionFactory;->populateConnectionParameters(Ljava/net/URLConnection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    new-instance p1, Lcom/amazon/messaging/odot/webservices/ConnectionWithBufferedOutput;

    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithExternalConnectionFactory;->mConnection:Ljava/net/URLConnection;

    new-instance v1, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithExternalConnectionFactory$1;

    invoke-direct {v1, p0}, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithExternalConnectionFactory$1;-><init>(Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithExternalConnectionFactory;)V

    invoke-direct {p1, v0, v1}, Lcom/amazon/messaging/odot/webservices/ConnectionWithBufferedOutput;-><init>(Ljava/net/URLConnection;Lcom/amazon/messaging/odot/webservices/BodyReceiver;)V

    return-object p1

    :catch_0
    move-exception p1

    .line 49
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithExternalConnectionFactory;->mConnection:Ljava/net/URLConnection;

    iget-object v1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithExternalConnectionFactory;->mLogger:Lcom/amazon/messaging/odot/webservices/ConnectionLogger;

    invoke-static {v0, p1, v1}, Lcom/amazon/messaging/odot/webservices/FailedConnection;->create(Ljava/net/URLConnection;Ljava/io/IOException;Lcom/amazon/messaging/odot/webservices/ConnectionLogger;)Lcom/amazon/messaging/odot/webservices/FailedConnection;

    move-result-object p1

    return-object p1
.end method
