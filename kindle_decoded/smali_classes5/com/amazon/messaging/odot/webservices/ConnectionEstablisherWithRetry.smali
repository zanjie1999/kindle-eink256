.class public Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;
.super Lcom/amazon/messaging/odot/webservices/ChainedConnectionEstablisher;
.source "ConnectionEstablisherWithRetry.java"


# static fields
.field private static final DO_NOT_RETRY:I = -0x1

.field private static final FIRST_RETRY_INTERVAL_MS:I = 0x1f4

.field private static final HTTP_REQUEST_CONFLICT:I = 0x199

.field private static final HTTP_REQUEST_TIMEOUT:I = 0x198

.field private static final HTTP_SERVER_ERROR:I = 0x1f4

.field private static final JITTER_PERCENT:I = 0x1e

.field private static final MAX_RETRY_INTERVAL_MS:I

.field private static final RANDOM:Ljava/security/SecureRandom;

.field private static final TAG:Ljava/lang/String;

.field private static final WAIT_PRECISION_NS:J


# instance fields
.field private final mBackoffHelper:Lcom/amazon/messaging/odot/webservices/util/ExponentialBackoffHelper;

.field private mBody:[B

.field private mConnection:Ljava/net/URLConnection;

.field private mConnectionTimeoutNs:J

.field private mFactory:Lcom/amazon/messaging/odot/webservices/ConnectionFactory;

.field private mLeftRetries:I

.field private final mLogger:Lcom/amazon/messaging/odot/webservices/ConnectionLogger;

.field private mStartingTimeNs:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 26
    const-class v0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;

    invoke-static {v0}, Lcom/amazon/messaging/odot/util/OdotMessageUtil;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->TAG:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->RANDOM:Ljava/security/SecureRandom;

    .line 32
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    long-to-int v1, v0

    sput v1, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->MAX_RETRY_INTERVAL_MS:I

    .line 33
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->WAIT_PRECISION_NS:J

    return-void
.end method

.method public constructor <init>(ILcom/amazon/messaging/odot/webservices/ConnectionLogger;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/amazon/messaging/odot/webservices/ChainedConnectionEstablisher;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->mBody:[B

    .line 49
    iput p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->mLeftRetries:I

    .line 50
    iput-object p2, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->mLogger:Lcom/amazon/messaging/odot/webservices/ConnectionLogger;

    .line 51
    new-instance p1, Lcom/amazon/messaging/odot/webservices/util/ExponentialBackoffHelper;

    sget p2, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->MAX_RETRY_INTERVAL_MS:I

    const/16 v0, 0x1f4

    invoke-direct {p1, v0, p2}, Lcom/amazon/messaging/odot/webservices/util/ExponentialBackoffHelper;-><init>(II)V

    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->mBackoffHelper:Lcom/amazon/messaging/odot/webservices/util/ExponentialBackoffHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;[B)Ljava/net/URLConnection;
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->doEstablishConnectionWithBody([B)Ljava/net/URLConnection;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;)Lcom/amazon/messaging/odot/webservices/ConnectionFactory;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->mFactory:Lcom/amazon/messaging/odot/webservices/ConnectionFactory;

    return-object p0
.end method

.method private disconnectConnection()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->mConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getDoInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->mConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 179
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->mConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getDoOutput()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    :try_start_1
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->mConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    .line 187
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->mConnection:Ljava/net/URLConnection;

    instance-of v1, v0, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_2

    .line 188
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 190
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 191
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    return-void
.end method

.method private disconnectConnectionIfExists()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->mConnection:Ljava/net/URLConnection;

    if-eqz v0, :cond_0

    .line 166
    invoke-direct {p0}, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->disconnectConnection()V

    :cond_0
    return-void
.end method

.method private doEstablishConnectionWithBody([B)Ljava/net/URLConnection;
    .locals 4

    .line 75
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->mBody:[B

    .line 76
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->mStartingTimeNs:J

    .line 77
    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->mConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getConnectTimeout()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->mConnectionTimeoutNs:J

    const/4 p1, 0x1

    .line 80
    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->establishConnectionWithTimeout(JZ)J

    move-result-wide v0

    :goto_0
    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 83
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->waitAndEstablishConnection(J)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 87
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->mConnection:Ljava/net/URLConnection;

    iget-object v1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->mLogger:Lcom/amazon/messaging/odot/webservices/ConnectionLogger;

    invoke-static {v0, p1, v1}, Lcom/amazon/messaging/odot/webservices/FailedConnection;->create(Ljava/net/URLConnection;Ljava/io/IOException;Lcom/amazon/messaging/odot/webservices/ConnectionLogger;)Lcom/amazon/messaging/odot/webservices/FailedConnection;

    move-result-object p1

    return-object p1

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->mConnection:Ljava/net/URLConnection;

    return-object p1
.end method

.method private establishConnectionWithTimeout(JZ)J
    .locals 0

    if-nez p3, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->disconnectConnectionIfExists()V

    .line 116
    new-instance p3, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry$2;

    invoke-direct {p3, p0, p1, p2}, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry$2;-><init>(Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;J)V

    invoke-super {p0, p3}, Lcom/amazon/messaging/odot/webservices/ChainedConnectionEstablisher;->doEstablish(Lcom/amazon/messaging/odot/webservices/ConnectionFactory;)Ljava/net/URLConnection;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->mConnection:Ljava/net/URLConnection;

    .line 136
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->mBody:[B

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->mBody:[B

    array-length p1, p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_1

    const/4 p1, 0x0

    .line 139
    :try_start_1
    iget-object p2, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->mConnection:Ljava/net/URLConnection;

    invoke-virtual {p2}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    .line 140
    iget-object p2, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->mBody:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    :try_start_2
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 143
    throw p2

    .line 146
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->mConnection:Ljava/net/URLConnection;

    instance-of p1, p1, Ljava/net/HttpURLConnection;

    const-wide/16 p2, -0x1

    if-eqz p1, :cond_2

    .line 147
    iget-object p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->mConnection:Ljava/net/URLConnection;

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 148
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    .line 150
    invoke-direct {p0, p1}, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->shouldRetry(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 151
    iget-object p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->mConnection:Ljava/net/URLConnection;

    invoke-direct {p0, p1}, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->getRetryTime(Ljava/net/URLConnection;)J

    move-result-wide p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-wide p1

    :cond_2
    return-wide p2

    :catch_0
    move-exception p1

    .line 157
    sget-object p2, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->TAG:Ljava/lang/String;

    const-string p3, "Error occurred while establishing connection!"

    invoke-static {p2, p3, p1}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    invoke-direct {p0}, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->disconnectConnection()V

    .line 159
    iget-object p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->mConnection:Ljava/net/URLConnection;

    invoke-direct {p0, p1}, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->getRetryTime(Ljava/net/URLConnection;)J

    move-result-wide p1

    return-wide p1
.end method

.method private getRetryTime(Ljava/net/URLConnection;)J
    .locals 4

    const-string v0, "Retry-After"

    .line 216
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->headerToNanoseconds(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "X-ADP-Call-After"

    .line 217
    invoke-virtual {p1, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->headerToNanoseconds(Ljava/lang/String;)J

    move-result-wide v2

    .line 218
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/16 p1, 0x1e

    .line 220
    invoke-virtual {p0, v0, v1, p1}, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->addRandomPositiveFudge(JI)J

    move-result-wide v0

    return-wide v0

    .line 224
    :cond_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->mBackoffHelper:Lcom/amazon/messaging/odot/webservices/util/ExponentialBackoffHelper;

    invoke-virtual {v0}, Lcom/amazon/messaging/odot/webservices/util/ExponentialBackoffHelper;->nextRetryInterval()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method private headerToNanoseconds(Ljava/lang/String;)J
    .locals 10

    const-wide/16 v0, -0x1

    if-eqz p1, :cond_4

    .line 239
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "never"

    .line 243
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-wide v0

    :cond_1
    const-string v2, "\\d+"

    .line 245
    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 246
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0

    :cond_2
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-array v5, v4, [Ljava/lang/String;

    .line 251
    invoke-static {p1, v5}, Lorg/apache/commons/lang3/time/DateUtils;->parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    .line 252
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    .line 253
    sget-object v9, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long/2addr v5, v7

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v5
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v7, v5, v2

    if-gez v7, :cond_3

    .line 255
    :try_start_1
    sget-object v7, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->TAG:Ljava/lang/String;

    const-string v8, "Looks like the device and server clocks are not synchronized."

    invoke-static {v7, v8}, Lcom/amazon/messaging/odot/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-wide v5, v0

    :catch_1
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v4

    const-string p1, "Cannot parse HTTP-date value \'%s\'."

    .line 259
    invoke-static {p1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 260
    sget-object v4, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->TAG:Ljava/lang/String;

    invoke-static {v4, p1}, Lcom/amazon/messaging/odot/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    cmp-long p1, v5, v2

    if-ltz p1, :cond_4

    move-wide v0, v5

    :cond_4
    :goto_1
    return-wide v0
.end method

.method private shouldRetry(I)Z
    .locals 1

    const/16 v0, 0x198

    if-eq p1, v0, :cond_1

    const/16 v0, 0x199

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1f4

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private sleep(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 201
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 203
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    .line 204
    :goto_0
    sget-wide v2, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->WAIT_PRECISION_NS:J

    add-long/2addr v2, p1

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 205
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long p1, v0, p1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p1, p2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V

    .line 206
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 209
    sget-object p2, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->TAG:Ljava/lang/String;

    const-string v0, "Connection thread was interrupted. No connection attempt will be performed."

    invoke-static {p2, v0}, Lcom/amazon/messaging/odot/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 211
    new-instance p2, Ljava/io/InterruptedIOException;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private waitAndEstablishConnection(J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 94
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->mStartingTimeNs:J

    sub-long/2addr v0, v2

    .line 96
    iget v2, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->mLeftRetries:I

    if-eqz v2, :cond_2

    add-long v2, v0, p1

    iget-wide v4, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->mConnectionTimeoutNs:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmp-long v6, p1, v2

    if-lez v6, :cond_1

    .line 101
    sget-object v2, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->TAG:Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Object;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 102
    invoke-virtual {v6, p1, p2, v7}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v4

    const-string v6, "Connection attempt will be performed in %d sec"

    .line 101
    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/messaging/odot/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->sleep(J)V

    .line 106
    :cond_1
    iget-wide v2, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->mConnectionTimeoutNs:J

    sub-long/2addr v2, v0

    sub-long/2addr v2, p1

    .line 108
    iget p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->mLeftRetries:I

    sub-int/2addr p1, v5

    iput p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->mLeftRetries:I

    .line 109
    invoke-direct {p0, v2, v3, v4}, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->establishConnectionWithTimeout(JZ)J

    move-result-wide p1

    return-wide p1

    :cond_2
    :goto_0
    const-wide/16 p1, -0x1

    return-wide p1
.end method


# virtual methods
.method public addRandomPositiveFudge(JI)J
    .locals 4

    int-to-long v0, p3

    mul-long v0, v0, p1

    const-wide/16 v2, 0x64

    .line 230
    div-long/2addr v0, v2

    long-to-int p3, v0

    if-lez p3, :cond_0

    .line 232
    sget-object v0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v0, p3}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result p3

    int-to-long v0, p3

    add-long/2addr p1, v0

    return-wide p1

    :cond_0
    int-to-long p1, p3

    return-wide p1
.end method

.method protected doEstablish(Lcom/amazon/messaging/odot/webservices/ConnectionFactory;)Ljava/net/URLConnection;
    .locals 2

    .line 63
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->mFactory:Lcom/amazon/messaging/odot/webservices/ConnectionFactory;

    .line 64
    invoke-super {p0, p1}, Lcom/amazon/messaging/odot/webservices/ChainedConnectionEstablisher;->doEstablish(Lcom/amazon/messaging/odot/webservices/ConnectionFactory;)Ljava/net/URLConnection;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->mConnection:Ljava/net/URLConnection;

    .line 66
    new-instance p1, Lcom/amazon/messaging/odot/webservices/ConnectionWithBufferedOutput;

    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;->mConnection:Ljava/net/URLConnection;

    new-instance v1, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry$1;

    invoke-direct {v1, p0}, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry$1;-><init>(Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;)V

    invoke-direct {p1, v0, v1}, Lcom/amazon/messaging/odot/webservices/ConnectionWithBufferedOutput;-><init>(Ljava/net/URLConnection;Lcom/amazon/messaging/odot/webservices/BodyReceiver;)V

    return-object p1
.end method
