.class public Lcom/amazon/whispersync/dcp/framework/webrpc/CallExecutor;
.super Ljava/lang/Object;
.source "CallExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/webrpc/CallExecutor$Factory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CallExecutor"


# instance fields
.field private final mAccountId:Ljava/lang/String;

.field private final mBody:[B

.field private final mCallMetadata:Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;

.field private mFactory:Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder$Factory;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private mTracer:Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private final mUrl:Ljava/net/URL;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;Ljava/net/URL;Ljava/lang/String;[B)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/CallExecutor;->mCallMetadata:Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;

    .line 65
    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/CallExecutor;->mUrl:Ljava/net/URL;

    .line 66
    iput-object p3, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/CallExecutor;->mAccountId:Ljava/lang/String;

    .line 67
    iput-object p4, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/CallExecutor;->mBody:[B

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whispersync/dcp/framework/webrpc/CallExecutor;)Lcom/amazon/whispersync/dcp/framework/DCPLog;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/CallExecutor;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/whispersync/dcp/framework/webrpc/CallExecutor;)Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/webrpc/CallExecutor;->doExecute()Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;

    move-result-object p0

    return-object p0
.end method

.method private createAndConfigureConnection()Ljava/net/HttpURLConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/CallExecutor;->mFactory:Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder$Factory;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/CallExecutor;->mCallMetadata:Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/CallExecutor;->mUrl:Ljava/net/URL;

    iget-object v3, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/CallExecutor;->mAccountId:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/CallExecutor;->mBody:[B

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder$Factory;->create(Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;Ljava/net/URL;Ljava/lang/String;[B)Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/webrpc/ConnectionBuilder;->build()Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method private createResult(Ljava/net/HttpURLConnection;)Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;

    invoke-direct {v0}, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;-><init>()V

    .line 189
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->setResponseCode(I)V

    .line 190
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->setHeaders(Ljava/util/Map;)V

    .line 192
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/CallExecutor;->mCallMetadata:Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;->isSuccessfulResponseCode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 194
    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->setSucceeded(Z)V

    .line 195
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/CallExecutor;->mCallMetadata:Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;

    invoke-interface {v1}, Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;->needToReadResponseBody()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/CallExecutor;->readResponse(Ljava/net/HttpURLConnection;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->setResponse(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 202
    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->setSucceeded(Z)V

    .line 203
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/CallExecutor;->readErrorMessage(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->setErrorMessage(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method private doExecute()Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/CallExecutor;->mCallMetadata:Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;

    invoke-interface {v0}, Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;->getDispatcher()Lcom/amazon/whispersync/dcp/framework/webrpc/TransportHelper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/webrpc/CallExecutor;->createAndConfigureConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 114
    :try_start_0
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/dcp/framework/webrpc/CallExecutor;->populateHeaders(Ljava/net/HttpURLConnection;)V

    .line 115
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/dcp/framework/webrpc/CallExecutor;->writeRequest(Ljava/net/HttpURLConnection;)V

    .line 117
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 119
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/dcp/framework/webrpc/CallExecutor;->createResult(Ljava/net/HttpURLConnection;)Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v1

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/CallExecutor;->mCallMetadata:Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;

    invoke-interface {v0}, Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;->getDispatcher()Lcom/amazon/whispersync/dcp/framework/webrpc/TransportHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/CallExecutor;->mAccountId:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/CallExecutor;->mUrl:Ljava/net/URL;

    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/CallExecutor;->mCallMetadata:Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;

    invoke-interface {v0}, Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;->getRequestMethod()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/CallExecutor;->mCallMetadata:Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;

    invoke-interface {v0}, Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;->needToReadResponseBody()Z

    move-result v5

    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/CallExecutor;->mCallMetadata:Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;

    invoke-interface {v0}, Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;->getHeaders()Ljava/util/Map;

    move-result-object v6

    iget-object v7, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/CallExecutor;->mBody:[B

    invoke-interface/range {v1 .. v7}, Lcom/amazon/whispersync/dcp/framework/webrpc/TransportHelper;->invoke(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;ZLjava/util/Map;[B)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 134
    :try_start_1
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/dcp/framework/webrpc/CallExecutor;->createResult(Ljava/net/HttpURLConnection;)Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 138
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v1

    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v1
.end method

.method private populateHeaders(Ljava/net/HttpURLConnection;)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/CallExecutor;->populateMetadataHeaders(Ljava/net/HttpURLConnection;)V

    return-void
.end method

.method private populateMetadataHeaders(Ljava/net/HttpURLConnection;)V
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/CallExecutor;->mCallMetadata:Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;

    invoke-interface {v0}, Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;->getHeaders()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 156
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 161
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 163
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private readErrorMessage(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 3

    .line 224
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 229
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/whispersync/dcp/framework/StreamHelpers;->readInputStream(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    invoke-static {p1}, Lcom/amazon/whispersync/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 233
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/CallExecutor;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    const-string v1, "Failed to read error message from the server"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->e(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    invoke-static {p1}, Lcom/amazon/whispersync/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_1

    :goto_0
    invoke-static {p1}, Lcom/amazon/whispersync/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v0

    :cond_0
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private readResponse(Ljava/net/HttpURLConnection;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 214
    :try_start_0
    invoke-static {p1}, Lcom/amazon/whispersync/dcp/framework/StreamHelpers;->readInputStream(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    invoke-static {p1}, Lcom/amazon/whispersync/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcom/amazon/whispersync/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v0
.end method


# virtual methods
.method public execute()Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/CallExecutor;->mTracer:Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer;

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;->REQUEST_TO_THREAD:Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer;->currentThreadIdToExtra()I

    move-result v2

    iget-object v3, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/CallExecutor;->mCallMetadata:Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;

    invoke-interface {v3}, Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/amazon/whispersync/dcp/framework/tracing/InternalTracer;->trace(Ljava/lang/Enum;IILjava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/CallExecutor;->mTracer:Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer;

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;->RAW_EXECUTION:Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer;->currentThreadIdToExtra()I

    move-result v2

    new-instance v3, Lcom/amazon/whispersync/dcp/framework/webrpc/CallExecutor$2;

    invoke-direct {v3, p0}, Lcom/amazon/whispersync/dcp/framework/webrpc/CallExecutor$2;-><init>(Lcom/amazon/whispersync/dcp/framework/webrpc/CallExecutor;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer;->trace(Ljava/lang/Enum;ILcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$ThrowingCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;

    return-object v0
.end method

.method public submit(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult<",
            "[B>;>;"
        }
    .end annotation

    .line 72
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/webrpc/CallExecutor$1;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/dcp/framework/webrpc/CallExecutor$1;-><init>(Lcom/amazon/whispersync/dcp/framework/webrpc/CallExecutor;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method final writeRequest(Ljava/net/HttpURLConnection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/CallExecutor;->mBody:[B

    if-eqz v0, :cond_1

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/CallExecutor;->mBody:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-static {p1}, Lcom/amazon/whispersync/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcom/amazon/whispersync/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
