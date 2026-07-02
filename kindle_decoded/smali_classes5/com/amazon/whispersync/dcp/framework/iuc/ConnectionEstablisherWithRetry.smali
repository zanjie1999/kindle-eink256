.class final Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;
.super Lcom/amazon/whispersync/dcp/framework/iuc/ChainedConnectionEstablisher;
.source "ConnectionEstablisherWithRetry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry$Factory;
    }
.end annotation


# static fields
.field private static final DO_NOT_RETRY:I = -0x1

.field private static final FIRST_RETRY_INTERVAL_MS:I = 0x1f4

.field private static final HTTP_REQUEST_CONFLICT:I = 0x199

.field private static final HTTP_REQUEST_TIMEOUT:I = 0x198

.field private static final HTTP_SERVER_ERROR:I = 0x1f4

.field private static final JITTER_PERCENT:I = 0x1e

.field private static final MAX_RETRY_INTERVAL_MS:I

.field private static final RANDOM:Ljava/security/SecureRandom;

.field private static final TAG:Ljava/lang/String; = "com.amazon.whispersync.dcp.framework.iuc.ConnectionEstablisherWithRetry"

.field private static final WAIT_PRECISION_NS:J


# instance fields
.field private final mBackoffHelper:Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;

.field private mBody:[B

.field private mConnection:Ljava/net/URLConnection;

.field private mConnectionTimeoutNs:J

.field private mFactory:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;

.field private mLeftRetries:I

.field private mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private final mLogger:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;

.field private mStartingTimeNs:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 53
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->RANDOM:Ljava/security/SecureRandom;

    .line 58
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    long-to-int v1, v0

    sput v1, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->MAX_RETRY_INTERVAL_MS:I

    .line 59
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->WAIT_PRECISION_NS:J

    return-void
.end method

.method private constructor <init>(ILcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ChainedConnectionEstablisher;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->mBody:[B

    .line 78
    iput p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->mLeftRetries:I

    .line 79
    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->mLogger:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;

    .line 80
    iput-object p3, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->mBackoffHelper:Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;

    return-void
.end method

.method synthetic constructor <init>(ILcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry$1;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;-><init>(ILcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;)V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 26
    sget v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->MAX_RETRY_INTERVAL_MS:I

    return v0
.end method

.method static synthetic access$200(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;[B)Ljava/net/URLConnection;
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->doEstablishConnectionWithBody([B)Ljava/net/URLConnection;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;)Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->mFactory:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;

    return-object p0
.end method

.method private disconnectConnection()V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->mConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getDoInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->mConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 243
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->mConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getDoOutput()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    :try_start_1
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->mConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    .line 255
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->mConnection:Ljava/net/URLConnection;

    instance-of v1, v0, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_2

    .line 257
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 259
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/whispersync/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 260
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    return-void
.end method

.method private disconnectConnectionIfExists()V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->mConnection:Ljava/net/URLConnection;

    if-eqz v0, :cond_0

    .line 225
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->disconnectConnection()V

    :cond_0
    return-void
.end method

.method private doEstablishConnectionWithBody([B)Ljava/net/URLConnection;
    .locals 4

    .line 108
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->mBody:[B

    .line 109
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->mStartingTimeNs:J

    .line 110
    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->mConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getConnectTimeout()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->mConnectionTimeoutNs:J

    const/4 p1, 0x1

    .line 113
    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->establishConnectionWithTimeout(JZ)J

    move-result-wide v0

    :goto_0
    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 118
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->waitAndEstablishConnection(J)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 124
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->mConnection:Ljava/net/URLConnection;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->mLogger:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;

    invoke-static {v0, p1, v1}, Lcom/amazon/whispersync/dcp/framework/iuc/FailedConnection;->create(Ljava/net/URLConnection;Ljava/io/IOException;Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;)Lcom/amazon/whispersync/dcp/framework/iuc/FailedConnection;

    move-result-object p1

    return-object p1

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->mConnection:Ljava/net/URLConnection;

    return-object p1
.end method

.method private establishConnectionWithTimeout(JZ)J
    .locals 1

    if-nez p3, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->disconnectConnectionIfExists()V

    .line 158
    new-instance p3, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry$2;

    invoke-direct {p3, p0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry$2;-><init>(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;J)V

    invoke-super {p0, p3}, Lcom/amazon/whispersync/dcp/framework/iuc/ChainedConnectionEstablisher;->doEstablish(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;)Ljava/net/URLConnection;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->mConnection:Ljava/net/URLConnection;

    .line 183
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->mBody:[B

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->mBody:[B

    array-length p1, p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_1

    const/4 p1, 0x0

    .line 188
    :try_start_1
    iget-object p2, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->mConnection:Ljava/net/URLConnection;

    invoke-virtual {p2}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    .line 189
    iget-object p2, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->mBody:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    :try_start_2
    invoke-static {p1}, Lcom/amazon/whispersync/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-static {p1}, Lcom/amazon/whispersync/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw p2

    .line 197
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->mConnection:Ljava/net/URLConnection;

    instance-of p1, p1, Ljava/net/HttpURLConnection;

    const-wide/16 p2, -0x1

    if-eqz p1, :cond_2

    .line 199
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->mConnection:Ljava/net/URLConnection;

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 200
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    .line 202
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->shouldRetry(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 204
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->mConnection:Ljava/net/URLConnection;

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->getRetryTime(Ljava/net/URLConnection;)J

    move-result-wide p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-wide p1

    :cond_2
    return-wide p2

    :catch_0
    move-exception p1

    .line 214
    iget-object p2, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    const-string v0, "Error occurred while establishing connection!"

    invoke-virtual {p2, p1, v0, p3}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 215
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->disconnectConnection()V

    .line 216
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->mConnection:Ljava/net/URLConnection;

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->getRetryTime(Ljava/net/URLConnection;)J

    move-result-wide p1

    return-wide p1
.end method

.method private getRetryTime(Ljava/net/URLConnection;)J
    .locals 4

    const-string v0, "Retry-After"

    .line 292
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->headerToNanoseconds(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "X-ADP-Call-After"

    .line 293
    invoke-virtual {p1, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->headerToNanoseconds(Ljava/lang/String;)J

    move-result-wide v2

    .line 294
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/16 p1, 0x1e

    .line 297
    invoke-virtual {p0, v0, v1, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->addRandomPositiveFudge(JI)J

    move-result-wide v0

    return-wide v0

    .line 303
    :cond_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->mBackoffHelper:Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;->nextRetryInterval()I

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

    .line 323
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "never"

    .line 328
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-wide v0

    :cond_1
    const-string v2, "\\d+"

    .line 332
    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 334
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0

    :cond_2
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 342
    :try_start_0
    invoke-static {p1}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    .line 343
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    .line 344
    sget-object v9, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long/2addr v5, v7

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v5
    :try_end_0
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v7, v5, v2

    if-gez v7, :cond_3

    .line 347
    :try_start_1
    iget-object v7, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    const-string v8, "Looks like the device and server clocks are not synchronized."

    new-array v9, v4, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->w(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-wide v5, v0

    :catch_1
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v4

    const-string p1, "Cannot parse HTTP-date value \'%s\'."

    .line 353
    invoke-static {p1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 354
    iget-object v7, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v7, p1, v4}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->w(Ljava/lang/String;[Ljava/lang/Object;)I

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

    .line 272
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 275
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    .line 276
    :goto_0
    sget-wide v2, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->WAIT_PRECISION_NS:J

    add-long/2addr v2, p1

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 278
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long p1, v0, p1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p1, p2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V

    .line 279
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 284
    iget-object p2, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Connection thread was interrupted. No connection attempt will be performed."

    invoke-virtual {p2, v1, v0}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->w(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 285
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 286
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

    .line 132
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->mStartingTimeNs:J

    sub-long/2addr v0, v2

    .line 134
    iget v2, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->mLeftRetries:I

    if-eqz v2, :cond_2

    add-long v2, v0, p1

    iget-wide v4, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->mConnectionTimeoutNs:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmp-long v6, p1, v2

    if-lez v6, :cond_1

    .line 141
    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    new-array v3, v5, [Ljava/lang/Object;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, p1, p2, v7}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v4

    const-string v6, "Connection attempt will be performed in %d sec"

    invoke-virtual {v2, v6, v3}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 143
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->sleep(J)V

    .line 146
    :cond_1
    iget-wide v2, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->mConnectionTimeoutNs:J

    sub-long/2addr v2, v0

    sub-long/2addr v2, p1

    .line 148
    iget p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->mLeftRetries:I

    sub-int/2addr p1, v5

    iput p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->mLeftRetries:I

    .line 149
    invoke-direct {p0, v2, v3, v4}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->establishConnectionWithTimeout(JZ)J

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

    .line 310
    div-long/2addr v0, v2

    long-to-int p3, v0

    if-lez p3, :cond_0

    .line 313
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v0, p3}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result p3

    int-to-long v0, p3

    add-long/2addr p1, v0

    return-wide p1

    :cond_0
    int-to-long p1, p3

    return-wide p1
.end method

.method protected doEstablish(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;)Ljava/net/URLConnection;
    .locals 2

    .line 93
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->mFactory:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;

    .line 94
    invoke-super {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ChainedConnectionEstablisher;->doEstablish(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;)Ljava/net/URLConnection;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->mConnection:Ljava/net/URLConnection;

    .line 96
    new-instance p1, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWithBufferedOutput;

    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;->mConnection:Ljava/net/URLConnection;

    new-instance v1, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry$1;

    invoke-direct {v1, p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry$1;-><init>(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;)V

    invoke-direct {p1, v0, v1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWithBufferedOutput;-><init>(Ljava/net/URLConnection;Lcom/amazon/whispersync/dcp/framework/iuc/BodyReceiver;)V

    return-object p1
.end method
