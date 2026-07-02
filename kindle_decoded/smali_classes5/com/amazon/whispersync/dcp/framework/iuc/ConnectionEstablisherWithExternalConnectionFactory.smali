.class final Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithExternalConnectionFactory;
.super Ljava/lang/Object;
.source "ConnectionEstablisherWithExternalConnectionFactory.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithExternalConnectionFactory$Factory;
    }
.end annotation


# instance fields
.field private mConnection:Ljava/net/URLConnection;

.field private final mExternalFactory:Lcom/amazon/whispersync/dcp/framework/iuc/ExternalConnectionFactory;

.field private final mLogger:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;

.field private mTracer:Lcom/amazon/whispersync/dcp/framework/iuc/Tracer;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/amazon/whispersync/dcp/framework/iuc/ExternalConnectionFactory;Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 55
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithExternalConnectionFactory;->mExternalFactory:Lcom/amazon/whispersync/dcp/framework/iuc/ExternalConnectionFactory;

    .line 56
    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithExternalConnectionFactory;->mLogger:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;

    return-void

    .line 53
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/dcp/framework/iuc/ExternalConnectionFactory;Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithExternalConnectionFactory$1;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithExternalConnectionFactory;-><init>(Lcom/amazon/whispersync/dcp/framework/iuc/ExternalConnectionFactory;Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithExternalConnectionFactory;[B)Ljava/net/URLConnection;
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithExternalConnectionFactory;->doEstablishConnectionWithBody([B)Ljava/net/URLConnection;

    move-result-object p0

    return-object p0
.end method

.method private doEstablishConnectionWithBody([B)Ljava/net/URLConnection;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 109
    :try_start_0
    array-length v1, p1

    if-lez v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithExternalConnectionFactory;->mConnection:Ljava/net/URLConnection;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 118
    :cond_0
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithExternalConnectionFactory;->mConnection:Ljava/net/URLConnection;

    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 119
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithExternalConnectionFactory;->mConnection:Ljava/net/URLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    invoke-static {v0}, Lcom/amazon/whispersync/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 123
    :try_start_1
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithExternalConnectionFactory;->mConnection:Ljava/net/URLConnection;

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithExternalConnectionFactory;->mLogger:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;

    invoke-static {v1, p1, v2}, Lcom/amazon/whispersync/dcp/framework/iuc/FailedConnection;->create(Ljava/net/URLConnection;Ljava/io/IOException;Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;)Lcom/amazon/whispersync/dcp/framework/iuc/FailedConnection;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    invoke-static {v0}, Lcom/amazon/whispersync/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    return-object p1

    :goto_0
    invoke-static {v0}, Lcom/amazon/whispersync/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw p1
.end method


# virtual methods
.method public establish(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;)Ljava/net/URLConnection;
    .locals 4

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithExternalConnectionFactory;->mExternalFactory:Lcom/amazon/whispersync/dcp/framework/iuc/ExternalConnectionFactory;

    invoke-interface {p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;->getTargetURL()Ljava/net/URL;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/dcp/framework/iuc/ExternalConnectionFactory;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    .line 71
    new-instance v1, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithExternalConnectionFactory;->mTracer:Lcom/amazon/whispersync/dcp/framework/iuc/Tracer;

    iget-object v3, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithExternalConnectionFactory;->mLogger:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;

    invoke-direct {v1, v0, v2, v3}, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;-><init>(Ljava/net/URLConnection;Lcom/amazon/whispersync/dcp/framework/iuc/Tracer;Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;)V

    const/4 v2, 0x0

    .line 76
    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;->setLogUploads(Z)V

    .line 78
    instance-of v0, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    .line 80
    iput-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithExternalConnectionFactory;->mConnection:Ljava/net/URLConnection;

    goto :goto_0

    .line 84
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/iuc/HttpsToHttpAdapter;

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dcp/framework/iuc/HttpsToHttpAdapter;-><init>(Ljava/net/URLConnection;)V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithExternalConnectionFactory;->mConnection:Ljava/net/URLConnection;

    .line 87
    :goto_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithExternalConnectionFactory;->mConnection:Ljava/net/URLConnection;

    invoke-interface {p1, v0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;->populateConnectionParameters(Ljava/net/URLConnection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    new-instance p1, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWithBufferedOutput;

    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithExternalConnectionFactory;->mConnection:Ljava/net/URLConnection;

    new-instance v1, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithExternalConnectionFactory$1;

    invoke-direct {v1, p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithExternalConnectionFactory$1;-><init>(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithExternalConnectionFactory;)V

    invoke-direct {p1, v0, v1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWithBufferedOutput;-><init>(Ljava/net/URLConnection;Lcom/amazon/whispersync/dcp/framework/iuc/BodyReceiver;)V

    return-object p1

    :catch_0
    move-exception p1

    .line 91
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithExternalConnectionFactory;->mConnection:Ljava/net/URLConnection;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithExternalConnectionFactory;->mLogger:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;

    invoke-static {v0, p1, v1}, Lcom/amazon/whispersync/dcp/framework/iuc/FailedConnection;->create(Ljava/net/URLConnection;Ljava/io/IOException;Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;)Lcom/amazon/whispersync/dcp/framework/iuc/FailedConnection;

    move-result-object p1

    return-object p1
.end method
